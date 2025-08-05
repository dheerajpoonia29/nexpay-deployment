-- create bank branch manually if not created by jpa
CREATE TABLE bank_branch_table (
    bank_id INT NOT NULL,
    branch_name VARCHAR(255) UNIQUE,
    ifsc_code VARCHAR(255) UNIQUE,
    PRIMARY KEY (bank_id, ifsc_code),
    FOREIGN KEY (bank_id) REFERENCES bank_table(id)
);

INSERT INTO bank_table (name, password) VALUES ('Hdfc Bank', '123');
INSERT INTO bank_branch_table (bank_id, branch_name, ifsc_code) VALUES
(1, 'gajsinghpur', 'hdfc001'),
(1, 'raisinghnagar', 'hdfc002');

INSERT INTO bank_table (name, password) VALUES ('Pnb Bank', '123');
INSERT INTO bank_branch_table (bank_id, branch_name, ifsc_code) VALUES
(2, 'amritsar', 'pnb001'),
(2, 'karnal', 'pnb002');