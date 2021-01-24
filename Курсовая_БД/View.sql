/* Данное view отображает все входящие и исходящие транзакции пользователей.
Подобное view может использоваться, например, для аналитики.
Здесь для примера отфильтровала транзакции по конкретному пользователю*/

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `input_output_transaction` AS
    SELECT 
        CONCAT(`u`.`firstname`, ' ', `u`.`lastname`) AS `username`,
        `a`.`number` AS `account_number`,
        `i`.`number` AS `transaction_number`,
        `i`.`amount` AS `amount`,
        `i`.`created_at` AS `created_at`,
        `i`.`status` AS `status`,
        'input' AS `direction`
    FROM
        ((`users` `u`
        LEFT JOIN `accounts` `a` ON ((`a`.`users_id` = `u`.`id`)))
        LEFT JOIN `input_transactions` `i` ON ((`i`.`to_account` = `a`.`id`)))
    WHERE
        (`u`.`id` = 3) 
    UNION SELECT 
        CONCAT(`u`.`firstname`, ' ', `u`.`lastname`) AS `CONCAT(u.firstname, " ", u.lastname)`,
        `a`.`number` AS `number`,
        `o`.`number` AS `number`,
        `o`.`amount` AS `amount`,
        `o`.`created_at` AS `created_at`,
        `o`.`status` AS `status`,
        'output' AS `direction`
    FROM
        ((`users` `u`
        LEFT JOIN `accounts` `a` ON ((`a`.`users_id` = `u`.`id`)))
        LEFT JOIN `output_transactions` `o` ON ((`o`.`from_account` = `a`.`id`)))
    WHERE
        (`u`.`id` = 3)