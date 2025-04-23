MATCH (n) DELETE (n);

MATCH (n) DETACH DELETE (n);

MATCH (n) RETURN (n);

MERGE(`Node 1` : PERSON{Person : "Personal Information", `First Name` : "Panagiotis", `Last Name` : "Chronopoulos",
`Date of birth` : TOSTRING(27 + " Mar " + 1997),
Nationality : "Greek", Gender : "Male"})
MERGE(`Node 2` : CONTACT{`Contact Information` : "Contact", Home : TOSTRING(25100 + " Aigio, Greece"),
Email : "panos_chron@hotmail.com", Phone : TOSTRING("(+" + 30 + ") " + 6970691068),
LinkedIn : "https://www.linkedin.com/in/panagiotis-chronopoulos-14a314319/",
GitHub : "https://github.com/panoschron97"})
MERGE(`Node 3`:`EDUCATION AND TRAINING`{`Education and Training Information` : "Education and Training", Degree : "Diploma in Information and Communication Systems Engineering University of the Aegean", Website : "http://www.icsd.aegean.gr/", `Date of Graduation` : TOSTRING(23 + " June " + 2023), Country : "Greece", Island : "Samos", Town : "Neon Karlovasi", University : "University of the Aegean"})
MERGE(`Node 4`:`DIGITAL SKILLS`{Skills : "Digital Skills", `Programming Languages` : ["C", "C++", "Java", "Python", "SQL", "Oracle PL/SQL", "Transact-SQL(T-SQL)", "PL/pgSQL", "R"],
Databases : [TOSTRING("Oracle Database " + 23 + "ai"), "Microsoft SQL Server", "MySQL", "PostgreSQL", "MariaDB", "HSQLDB", "Firebird", "MongoDB"], Software : ["Power BI", "Tableau", "Microsoft Excel", "Microsoft Access", "Navision ERP"], `Operating Systems` : ["Windows", "Linux"]})
MERGE(`Node 5`:`LANGUAGE SKILLS`{Skills : "Language Skills", `Mother Tongue(s)` : "Greek",
`Other Language(s)` : ["English",TOSTRING("Listening C" + 1),TOSTRING("Reading C" + 1), TOSTRING("Writing B" + 2), TOSTRING("Spoken Production B" + 1), TOSTRING("Spoken Interaction B" + 2)]})
MERGE(`Node 6`:CERTIFICATES{`Certificates Information` : "Certificates", Udemy : ["https://www.udemy.com/certificate/UC-91fccd90-a115-4630-961b-8e8455a0db9f/", "https://www.udemy.com/certificate/UC-79a904b3-5ab4-4ce6-b370-02a834a78ca2/", "https://www.udemy.com/certificate/UC-f6feb7e7-e9e8-4e6c-976e-6ec295781885/", "https://www.udemy.com/certificate/UC-abd106c7-036b-4503-9986-ed202110c37d/", "https://www.udemy.com/certificate/UC-e774259d-5c59-41f3-911e-80c3fcd4a55a/", "https://www.udemy.com/certificate/UC-e774259d-5c59-41f3-911e-80c3fcd4a55a/", "https://www.udemy.com/certificate/UC-4427f64c-907b-48c8-b9ad-9d4f3147a7f5/", "https://www.udemy.com/certificate/UC-33778ca2-c667-4af5-8fe3-35afbe632b2c/", "https://www.udemy.com/certificate/UC-fc8aef09-1d32-4e2e-9130-e04b40fa5410/", "https://www.udemy.com/certificate/UC-e0479802-4420-4d4d-aa8a-664b5a37b460/", "https://www.udemy.com/certificate/UC-7581f36b-a824-4950-8c71-499800ab2159/"], 
Simplilearn : ["https://simpli-web.app.link/e/JzhNrBkMvMb", "https://simpli-web.app.link/e/gDWbuBxviMb", "https://simpli-web.app.link/e/U4tMwqsraMb", "https://simpli-web.app.link/e/mmk5DUmp0Lb", "https://simpli-web.app.link/e/Cvmn35NFRLb"], Michigan : " Certificate of Competency in English - Lower Michigan (ECCE) - B2"})
MERGE(`Node 7`:`OTHER INFORMATION`{Information : "Other Information", `Military Obligations` : TOSTRING("Completed on " + 19 + " June " + 2024), `Driver License` : "B"})
MERGE(`Node 8`:ROLES{`Roles Information` : "Roles", Roles : ["Data Analyst", "Database Administrator", "SQL Developer", "PL/SQL Developer", "Data Engineer"]})
MERGE(`Node 9`:HOBBIES{`Hobbies Information` : "Hobbies", Hobbies : ["Playing League of Legends", "Studying programming languages", "Watching movies", "Listening music"]})
MERGE(`Node 10`:`SOFT SKILLS`{`Skills ` : "Soft Skills", Skills : ["Enthusiasm", "Teamwork", "Problem Solving"]})
MERGE(`Node 1`)-[`Relationship 1`:HAS{`Information From` : "https://europa.eu/europass/eportfolio/screen/cv-editor?lang=en"}]->(`Node 2`)
MERGE(`Node 1`)-[`Relationship 2`:HAS{`Information From` : "https://europa.eu/europass/eportfolio/screen/cv-editor?lang=en"}]->(`Node 3`)
MERGE(`Node 1`)-[`Relationship 3`:HAS{`Information From` : "https://europa.eu/europass/eportfolio/screen/cv-editor?lang=en"}]->(`Node 4`)
MERGE(`Node 1`)-[`Relationship 4`:HAS{`Information From` : "https://europa.eu/europass/eportfolio/screen/cv-editor?lang=en"}]->(`Node 5`)
MERGE(`Node 1`)-[`Relationship 5`:`HAS DONE`{`Information From` : "https://europa.eu/europass/eportfolio/screen/cv-editor?lang=en"}]->(`Node 6`)
MERGE(`Node 1`)<-[`Relationship 6`:`THAT CONCERNS`{`Information From` : "https://europa.eu/europass/eportfolio/screen/cv-editor?lang=en"}]-(`Node 7`)
MERGE(`Node 1`)-[`Relationship 7`:`IS INTERESTED IN`{`Information From` : "https://europa.eu/europass/eportfolio/screen/cv-editor?lang=en"}]->(`Node 8`)
MERGE(`Node 1`)-[`Relationship 8`:HAS{`Information From` : "https://europa.eu/europass/eportfolio/screen/cv-editor?lang=en"}]->(`Node 9`)
MERGE(`Node 1`)-[`Relationship 9`:HAS{`Information From` : "https://europa.eu/europass/eportfolio/screen/cv-editor?lang=en"}]->(`Node 10`)
RETURN *;