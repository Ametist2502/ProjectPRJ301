--create database EOS_Client
use EOS_Client

create table Students (
	Username nvarchar(255) primary key,
	[Password] nvarchar(255),
	[Name] nvarchar(255),
	[RollNumber] nvarchar(255),
);

create table ExamCode (
	[ExamCode] nvarchar(255) primary key,
);

create table MAS(
	ID int primary key,
	Question varchar(255),
	Answers varchar(255),
	OptionA varchar(255),
	OptionB varchar(255),
	OptionC varchar(255),
	OptionD varchar(255),
);

create table IOT(
	ID int primary key,
	Question varchar(255),
	Answers varchar(255),
	OptionA varchar(255),
	OptionB varchar(255),
	OptionC varchar(255),
	OptionD varchar(255),
);

create table PRJ(
	ID int primary key,
	Question varchar(255),
	Answers varchar(255),
	OptionA varchar(255),
	OptionB varchar(255),
	OptionC varchar(255),
	OptionD varchar(255),
);

create table DE(
	ID int primary key,
	Question varchar(255),
	Answers varchar(255),
	OptionA varchar(255),
	OptionB varchar(255),
	OptionC varchar(255),
	OptionD varchar(255),
);

create table LINUX(
	ID int primary key,
	Question varchar(255),
	Answers varchar(255),
	OptionA varchar(255),
	OptionB varchar(255),
	OptionC varchar(255),
	OptionD varchar(255),
);


-- Insert into IOT DBO
insert into IOT
values
('1', 'What is an example of cloud computing?', 'A service that offers on-demand access to shared resources.', 'A continuous interaction between people, processes, data, and things.', 'A service that offers on-demand access to shared resources.', 'A network infrastructure that spans a large geographic area.', 'An architectural style of the World Wide Web.'),
('2', 'Which possibility ensures load balancing and peak levelling of energy consumption?', 'Automotive', 'Transportation and logistics', 'Energy and utilities', 'Automotive', 'Connected supply chain'),
('3', 'Resource management will elaborate the key aspects of _________', 'Network management', 'Industrial managements', 'Energy management', 'Network management', 'Information management'),
('4', 'The number of devices that need to be managed and that communicate with each other will be much larger.', 'Enormous Scale', 'Intelligence', 'Connectivity', 'Dynamic Nature', 'Enormous Scale'),
('5', '_______ are used to overcome the challenges of managing the resources of the IoT.', 'Cluster, Software agent, and Synchronization techniques', 'Clustering', 'Software agents', 'Synchronization techniques', 'Cluster, Software agent, and Synchronization techniques'),
('6','How does fog computing reduce security risks?','It acts on IoT data closer to the source','It acts on IoT data closer to the source','It creates unclear connections that are difficult to intercept','It reduces the need for remote management','It scrambles electronic signals and encrypts all data'),
('7','The combination of conditioning plus the element being controlled by the computer is called a _________ ?','Actuator','DAC','Instrumentation amplifier','Motor','Actuator'),
('8','How many digital pins are there in the UNO board?','14','14','12','16','20'),
('9','When the gate system at the dairy closes one gate and opens another to direct a cow into a particular area, what is (or what are) the actuators in play?','Pneumatic arms on gate mechanism','RF antennae detecting ID of cow','Light sensors detecting cow in gate','Pneumatic arms on gate mechanism','Movement sensor in cow''s pendant'),
('10','________ provide the means to create capability that reflects true awareness of the physical world and people.','Sensors','Sensors','Heterogeneity','Security','Connectivity'),
('11','________ Will reduces the cost of the devices.','Voice Integration','Intuitive','Voice telephony','Voice recognition','Voice Integration'),
('12','Which of the following is NOT a standard used in E-Commerce?','SETI','EDI','XML','SETI','X12'),
('13','A computer communication technology that provides a way to interconnect multiple computer across short distance is','LAN','WAN','LAN','MAN','Wireless network'),
('14','Digital Signature is','Software to recognize signature','Scanned Signature on Computer','Code number of the sender','Public Key Encryption','Software to recognize signature'),
('15','Which of the following is an example of edutainment?','An online game that uses colorful characters to teach young children about numbers','Two or more students sharing music over the Internet','An online science fiction game whose object is to blast as many aliens as possible in a 60 second round','A community college providing an online college course on digital media','An online game that uses colorful characters to teach young children about numbers');


-- Insert into DE DBO
insert into DE
values
('1', 'Which emerging technology has made it possible for every enterprise to have access to limitless storage and high-performance computing?', 'Cloud Computing', 'Machine Learning', 'Cloud Computing', 'Internet of Things', 'Big Data'),
('2', 'Which of the data roles is responsible for extracting, integrating, and organizing data into data repositories?', 'Data Engineer', 'Business Intelligence Analyst', 'Data Analyst', 'Data Engineer', 'Data Scientist'),
('3', 'The field of data engineering concerns itself with the mechanics for the flow and access of data. Which one of the following statements captures the goal of data engineering?', 'Make quality data available for fact-finding and business decision-making', 'Make quality data available for fact-finding and business decision-making', 'Maintain distributed systems for large-scale processing of data', 'Architect data stores for the storage of processed data', 'Design pipelines for extracting, transforming, and loading data into data repositories'),
('4', 'A modern data ecosystem includes a network of continually evolving entities. It includes:','Data sources, enterprise data repository, business stakeholders, and tools, applications, and infrastructure to manage data','Data sources, enterprise data repository, business stakeholders, and tools, applications, and infrastructure to manage data','Social media sources, data repositories, and APIs','Data sources, enterprise data repository, business stakeholders, and tools, applications, and infrastructure to manage data','Data providers, databases, and programming languages'),
('5', 'Data Engineers work within the data ecosystem to:','Develop and maintain data architectures','Analyze data for deriving insights','Analyze data for actionable insights','Develop and maintain data architectures','Provide business intelligence solutions by monitoring data on different business functions'),
('6', 'The goal of data engineering is to make quality data available for fact-finding and decision-making. Which one of these statements captures the process of data engineering?','Collecting, processing, storing, and making data available to users securely','Collecting, processing, and making data available to users securely','Collecting, processing, storing, and making data available to users securely','Processing data and making it available to users securely','Collecting, processing, and storing data'),
('7', 'Data extracted from disparate sources can be stored in:','Databases, data warehouses, data lakes, or any other type of data repository','Data Lakes only','Databases, data warehouses, data lakes, or any other type of data repository','Databases only','Data Warehouses only'),
('8', 'From the provided list, select the three emerging technologies that are shaping today’s data ecosystem.','Cloud Computing, Machine Learning, and Big Data','Machine Language, Cloud Computing, and Internet of Things','Cloud Computing, Internet of Things, and Dashboarding','Cloud Computing, Machine Learning, and Big Data','Big Data, Internet of Things, and Dashboarding'),
('9','Which one of these skills is essential to the role of a Data Engineer?','To setup and manage the infrastructure required for the ingestion, processing, and storage of data','To setup and manage the infrastructure required for the ingestion, processing, and storage of data','Proficiency in creating Deep Learning models','To inspect analytics-ready data for deriving insights','Proficiency in Statistics'),
('10','What, according to Sarah Flinch, needs to be tracked and analyzed in order to keep business updated on the overall sentiment of the consumers?','Social media posts, customer reviews and ratings on eCommerce platforms, and product reviews on blogging sites','eCommerce platforms','Social media sites','Blogging sites','Social media posts, customer reviews and ratings on eCommerce platforms, and product reviews on blogging sites'),
('11','Which one of these functional skills is essential to the role of a Data Engineer?','The ability to work with the software development lifecycle','The ability to work with the software development lifecycle','Proficiency in working with ETL Tools','Proficiency in Mathematics','Inspect analytics-ready data for deriving insights'),
('12','Oracle Exadata, IBM Db2 Warehouse on Cloud, IBM Netezza Performance Server, and Amazon RedShift are some of the popular __________________ in use today.','Data Warehouses','ETL Tools','NoSQL Databases','Data Warehouses','Big Data Platforms'),
('13','To ensure business stakeholders can see real-time data each time they log into the dashboard, Sarah decided to build _______________ to extract, transform, and load data on an ongoing basis.','A Data Pipeline','A sentiment analysis algorithm','A Data Pipeline','APIs','A Python program'),
('14','Automated tools, frameworks, and processes for all stages of the data analytics process are part of the Data Engineer’s ecosystem. What role do data integration tools play in this ecosystem?','Combine data from multiple sources into a unified view that is accessed by data consumers to query and manipulate data','Cover the entire journey of data from source to destination','Combine data from multiple sources into a unified view that is accessed by data consumers to query and manipulate data','Store high-volume day-to-day operational data in data repositories','Conduct complex data analytics'),
('15','Which of these data sources is an example of semi-structured data?','Emails','Documents','Network and web logs','Emails','Social media feeds'),
('16','Which one of the provided file formats is commonly used by APIs and Web Services to return data?','JSON','XML','XLS','JSON','Delimited file'),
('17','What is one example of the relational databases discussed in the video?','SQL Server','SQL Server','Flat files','XML','Spreadsheet'),
('18','Which of the following languages is one of the most popular querying languages in use today?','SQL','SQL','Python','Java','R'),
('19','Which of the following is an example of unstructured data?','Video and Audio files','Spreadsheets','Zipped files','Video and Audio files','XML'),
('20','Which one of these file formats is independent of software, hardware, and operating systems, and can be viewed the same way on any device?','PDF','XLSX','PDF','XML','Delimited text file'),
('21','Which data source can return data in plain text, XML, HTML, or JSON among others?','APIs','XML','Delimited text file','PDF','APIs'),
('22','In the data engineer’s ecosystem, languages are classified by type. What are shell and scripting languages most commonly used for?','Automating repetitive operational tasks','Building apps','Automating repetitive operational tasks','Querying data','Manipulating data'),
('23','Which NoSQL database type stores each record and its associated data within a single document and also works well with Analytics platforms?','Document-based','Column-based','Graph-based','Document-based','Key-value store'),
('24','What type of data repository is used to isolate a subset of data for a particular business function, purpose, or community of users?','Data Mart','Data Pipeline','Data Warehouse','Data Lake','Data Mart'),
('25','____________ is ideal for data lakes where transformations on data are applied after raw data is loaded into the data lake.','ELT (Extract-Load-Transform) Process','ETL (Extract-Transform-Load) Process','ELT (Extract-Load-Transform) Process','Batch Processing','Data Pipeline');


-- Insert into LINUX DBO
insert into LINUX
values
('1','Applications communicate with kernel by using:','System Calls','System Calls','C Programs','Shell Script','Shell'),
('2','Syntax of any Unix command is:','command [options] [arguments].','command [options] [arguments].','command options [arguments].','command [options] [arguments].','command options arguments'),
('3','How do you get help about the command “cp”?','man cp','help cp','man cp','cd ?','none of the mentioned'),
('4','Which option of ls command used to view file inode number','–i','–a','–o','–l','–i'),
('5','Which command is used to identify file type?','File','Type','File','Finfo','Info'),
('6','The dmesg command','kernel log messages','Shows user login logoff attempts','Shows the syslog file for info messages','kernel log messages','Shows the daemon log messages'),
('7','The command “mknod myfifo b 4 16”','Will create a block device if user is root','Will create a block device if user is root','Will create a block device for all users','Will create a FIFO if user is not root','None of the mentioned'),
('8','Which command is used to set terminal IO characteristic?','stty','tty','ctty','ptty','stty'),
('9','Which command is used to record a user login session in a file','script','macro','read','script','none of the mentioned'),
('10','Which command is used to display the operating system name','uname','os','unix','kernel','uname'),
('11','Which command is used to display the unix version','uname -r','uname -r','uname -n','uname -t','kernel'),
('12','Which command is used to print a file','lpr','print','ptr','lpr','none of the mentioned'),
('13','Using which command you find resource limits to the session?','ulimit','rlimit','ulimit','setrlimit','getrlimit'),
('14','Find / -name ‘*’ will','List all files and directories recursively starting from /','List all files and directories recursively starting from /','List a file named * in /','List all files in / directory','List all files and directories in / directory'),
('15','Which command is used to display the octal value of the text','od','octal','text_oct','oct','od'),
('16','Which command is used to view compressed text file contents','zcat','type','cat','zcat','print'),
('17','Which command changes a file’s group owner','chgrp','cgrp','chgrp','change','group'),
('18','Which command is used to extract intermediate result in a pipeline','tee','tee','extract','exec','none of the mentioned'),
('19','Which command is used to extract a column from a text file','cut','paste','get','cut','tar'),
('20','Which command is used to display disk consumption of a specific directory','du','du','ds','dd','dds');

-- Đừng có tạo cái bảng này chưa code đến đoạn add result vô DBO
create table Result(
	Username nvarchar(255) foreign key references Students([Username]),
	[Name] nvarchar(255) foreign key references Students([Username]),
	[ExamCode] nvarchar(255) foreign key references ExamCode([ExamCode]),
	Grade float,
);