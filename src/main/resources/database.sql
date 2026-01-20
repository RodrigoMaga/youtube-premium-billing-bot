CREATE DATABASE youtube_premium_billing_bot;
USE youtube_premium_billing_bot;

CREATE TABLE participant (
    id BIGINT AUTO_INCREMENT PRIMARY KEY
        COMMENT 'Unique identifier for each participant',

    user_name VARCHAR(100) NOT NULL
        COMMENT 'Full name of the participant',

    user_email VARCHAR(150) NOT NULL
        COMMENT 'Email address of the participant',

    user_phone VARCHAR(20) NOT NULL
        COMMENT 'Phone number of the participant',

    participant_order INT NOT NULL
        COMMENT 'Sequence or position of the participant in the billing order',

    CONSTRAINT uk_participant_email UNIQUE (user_email)
        COMMENT 'Ensures that each participant has a unique email'
)
COMMENT = 'Stores registered participants for YouTube Premium billing';

CREATE TABLE payment (
    id BIGINT AUTO_INCREMENT PRIMARY KEY
        COMMENT 'Unique identifier for each payment record',

    participant_id BIGINT NOT NULL
        COMMENT 'Reference to the participant who owns this payment',

    status ENUM('PAYED', 'NOT_PAYED') NOT NULL
        COMMENT 'Payment status: PAYED or NOT_PAYED',

    payment_month TINYINT NOT NULL
        COMMENT 'Month of the payment (1 to 12)',

    payment_year SMALLINT NOT NULL
        COMMENT 'Year of the payment (e.g. 2024)',

    CONSTRAINT fk_payment_participant
        FOREIGN KEY (participant_id)
        REFERENCES participant(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
)
COMMENT = 'Stores monthly payment information for participants';