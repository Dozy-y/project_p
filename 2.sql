ALTER TABLE FeedConsumption
ADD COLUMN employee_id INT REFERENCES Employee(employee_id);
ALTER TABLE FeedPurchase
ADD COLUMN employee_id INT REFERENCES Employee(employee_id);
ALTER TABLE Flight
ADD COLUMN employee_id INT REFERENCES Employee(employee_id);
ALTER TABLE PigeonLoft
ADD COLUMN employee_id INT REFERENCES Employee(employee_id);
ALTER TABLE VetCheck
ADD COLUMN employee_id INT REFERENCES Employee(employee_id);
ALTER TABLE Supplier
ADD COLUMN employee_id INT REFERENCES Employee(employee_id);
ALTER TABLE Manager
ADD COLUMN employee_id INT REFERENCES Employee(employee_id);
ALTER TABLE LoftManager
ADD COLUMN employee_id INT REFERENCES Employee(employee_id);
ALTER TABLE VetCheck
ADD COLUMN planned_by_employee_id INT REFERENCES Employee(employee_id);
ALTER TABLE Pigeon
ADD COLUMN trainer_employee_id INT REFERENCES Employee(employee_id);
