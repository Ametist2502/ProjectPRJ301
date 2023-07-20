-- This code insert data into dbo DE
use EOS_Client
insert into DE
values
('9','Which one of these skills is essential to the role of a Data Engineer?','To setup and manage the infrastructure required for the ingestion, processing, and storage of data','To setup and manage the infrastructure required for the ingestion, processing, and storage of data','Proficiency in creating Deep Learning models','To inspect analytics-ready data for deriving insights','Proficiency in Statistics'),
('10','What, according to Sarah Flinch, needs to be tracked and analyzed in order to keep business updated on the overall sentiment of the consumers?','Social media posts, customer reviews and ratings on eCommerce platforms, and product reviews on blogging sites','eCommerce platforms','Social media sites','Blogging sites','Social media posts, customer reviews and ratings on eCommerce platforms, and product reviews on blogging sites'),
('11','Which one of these functional skills is essential to the role of a Data Engineer?','The ability to work with the software development lifecycle','The ability to work with the software development lifecycle','Proficiency in working with ETL Tools','Proficiency in Mathematics','Inspect analytics-ready data for deriving insights'),
('12','Oracle Exadata, IBM Db2 Warehouse on Cloud, IBM Netezza Performance Server, and Amazon RedShift are some of the popular __________________ in use today.','Data Warehouses','ETL Tools','NoSQL Databases','Data Warehouses','Big Data Platforms'),
('13','To ensure business stakeholders can see real-time data each time they log into the dashboard, Sarah decided to build _______________ to extract, transform, and load data on an ongoing basis.','A Data Pipeline','A sentiment analysis algorithm','A Data Pipeline','APIs','A Python program'),
('14','Automated tools, frameworks, and processes for all stages of the data analytics process are part of the Data Engineer�s ecosystem. What role do data integration tools play in this ecosystem?','Combine data from multiple sources into a unified view that is accessed by data consumers to query and manipulate data','Cover the entire journey of data from source to destination','Combine data from multiple sources into a unified view that is accessed by data consumers to query and manipulate data','Store high-volume day-to-day operational data in data repositories','Conduct complex data analytics'),
('15','Which of these data sources is an example of semi-structured data?','Emails','Documents','Network and web logs','Emails','Social media feeds'),
('16','Which one of the provided file formats is commonly used by APIs and Web Services to return data?','JSON','XML','XLS','JSON','Delimited file'),
('17','What is one example of the relational databases discussed in the video?','SQL Server','SQL Server','Flat files','XML','Spreadsheet'),
('18','Which of the following languages is one of the most popular querying languages in use today?','SQL','SQL','Python','Java','R'),
('19','Which of the following is an example of unstructured data?','Video and Audio files','Spreadsheets','Zipped files','Video and Audio files','XML'),
('20','Which one of these file formats is independent of software, hardware, and operating systems, and can be viewed the same way on any device?','PDF','XLSX','PDF','XML','Delimited text file'),
('21','Which data source can return data in plain text, XML, HTML, or JSON among others?','APIs','XML','Delimited text file','PDF','APIs'),
('22','In the data engineer�s ecosystem, languages are classified by type. What are shell and scripting languages most commonly used for?','Automating repetitive operational tasks','Building apps','Automating repetitive operational tasks','Querying data','Manipulating data'),
('23','Which NoSQL database type stores each record and its associated data within a single document and also works well with Analytics platforms?','Document-based','Column-based','Graph-based','Document-based','Key-value store'),
('24','What type of data repository is used to isolate a subset of data for a particular business function, purpose, or community of users?','Data Mart','Data Pipeline','Data Warehouse','Data Lake','Data Mart'),
('25','____________ is ideal for data lakes where transformations on data are applied after raw data is loaded into the data lake.','ELT (Extract-Load-Transform) Process','ETL (Extract-Transform-Load) Process','ELT (Extract-Load-Transform) Process','Batch Processing','Data Pipeline');