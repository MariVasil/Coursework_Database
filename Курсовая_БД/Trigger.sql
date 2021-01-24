/* Данный триггер срабатывает после обновления таблицы.
   Если в результате обновления баланс счёта оказался отрицательным - выдаётся ошибка */ 

CREATE DEFINER=`root`@`localhost` TRIGGER `accounts_AFTER_UPDATE` AFTER UPDATE ON `accounts` FOR EACH ROW BEGIN
	IF NEW.balance < 0 THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Account can not be less than 0';
	END IF;
END