/* Данная группировка отображает какое количество входящих транзакций было
осуществлено по каждому платежному методу за конкретный период (в данном случае - прошлый год).
Это полезно, например, для аналитики, сбора метрик и составления оценки.
Можно, например, передать результаты этой выборки в какую-нибудь аналитическую систему для 'красивого' отображения*/

SELECT
COUNT(*) as number_of_transactions,
im.name as method_name
FROM input_transactions it
LEFT JOIN input_methods im
ON it.method = im.id
WHERE YEAR(it.created_at) = (YEAR(NOW()) - 1)
GROUP BY im.name
