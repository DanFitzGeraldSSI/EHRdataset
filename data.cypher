MATCH (n) RETURN n LIMIT 10;

LOAD CSV WITH HEADERS FROM 'file:///Data/PATIENTS.csv' AS row
CREATE (:Patient {
    subject_id: row.subject_id,
    gender: row.gender,
    dob: row.dob,
    dod: row.dod
});
