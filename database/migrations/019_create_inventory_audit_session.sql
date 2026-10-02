CREATE TABLE inventory_audit_session (
    audit_session_id VARCHAR(30) PRIMARY KEY,

    audit_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    audit_type VARCHAR(30) NOT NULL,

    performed_by VARCHAR(100) NOT NULL,

    status VARCHAR(20) NOT NULL DEFAULT 'IN_PROGRESS',

    remarks TEXT,

    CONSTRAINT chk_audit_type
        CHECK (
            audit_type IN (
                'DAILY',
                'WEEKLY',
                'MONTHLY',
                'SURPRISE',
                'ANNUAL'
            )
        ),

    CONSTRAINT chk_audit_session_status
        CHECK (
            status IN (
                'IN_PROGRESS',
                'COMPLETED',
                'CANCELLED'
            )
        )
);


ALTER TABLE inventory_audit
ADD COLUMN audit_session_id VARCHAR(30);

ALTER TABLE inventory_audit
ADD CONSTRAINT fk_inventory_audit_session
FOREIGN KEY (audit_session_id)
REFERENCES inventory_audit_session(audit_session_id);
