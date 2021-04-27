-- ticket table
CREATE TABLE IF NOT EXISTS ticket (
  ticket_id INT NOT NULL,
  passenger_name varchar(50) NOT NULL,
  PRIMARY KEY (ticket_id)
);

-- emd table
CREATE TABLE IF NOT EXISTS emd (
  emd_id INT NOT NULL,
  emd_name varchar(50) NOT NULL,
  emd_desc varchar(250) NOT NULL,
  PRIMARY KEY (emd_id)
);
-- document table
CREATE TABLE IF NOT EXISTS document (
  document_id INT NOT NULL,
  document_name varchar(50) NOT NULL,
  document_desc varchar(250) NOT NULL,
  ticket_id INT NOT NULL,
  PRIMARY KEY (document_id),
  CONSTRAINT fk_ticket
      FOREIGN KEY(ticket_id) 
	  REFERENCES ticket(ticket_id)
);
