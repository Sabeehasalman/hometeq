CREATE TABLE Product
(
prodId				INTEGER		AUTO_INCREMENT,
prodName			VARCHAR(30)		NOT NULL,
prodPicNameSmall 	VARCHAR(100)	NOT NULL,
prodPicNameLarge 	VARCHAR(100)	NOT NULL,
prodDescripShort 	VARCHAR(1000),	
prodDescripLong 	VARCHAR(3000),
prodPrice			DECIMAL(6,2) 	NOT NULL,
prodQuantity		INTEGER 		NOT NULL,

CONSTRAINT 		p_pId_pk PRIMARY KEY(prodId)


);
INSERT INTO Product (prodName, prodPicNameSmall, prodPicNameLarge, prodDescripShort, prodDescripLong, prodPrice, prodQuantity)
VALUES 
    ('BlissLights Sky Lite Evolve - Star Projector, Galaxy Projector, LED Nebula Lighting, WiFi App, for Meditation, Relaxation, Gaming Room, Home Theater, and Bedroom Night Light Gift','3.jpg','long 3.jpg','If you’ve carved out a space to get away in your home, or need to, the Sky Lite Evolve is the element that will shift your atmosphere from relaxing to a full-on utopia.','Sky Lite Evolve, with its patented nebula cloud technology and beautiful cobalt blue stars, is a one-of-a-kind experience you would not find anywhere else. Experience a symphony of dazzling, reinvented nebula cloud hues that blend effortlessly, creating a breathtaking display unrivaled by other galaxy projectors. This is not just a visual feast, it is a portal to serene relaxation and immersive gaming experiences that truly sets a new standard.',380.00,9),
	
    ('Ring Plug-In Adapter','4.jpg','long 4.jpg','Plug your Ring Video Doorbell into a standard indoor outlet for 24/7 power and protection, even if your home doesn’t have existing doorbell wires.','Plug-In Adapter installs in minutes and keeps your doorbell powered without hardwired installation or taking batteries out to recharge them. Insert the doorbell’s rechargeable, Quick Release Battery Pack. Plug-in Adapter will keep the battery charged inside the doorbell. Insert the doorbell is rechargeable, Quick Release Battery Pack. Plug-in Adapter will keep the battery charged inside the doorbell.',585.00,4),
	
    ('Arlo - Wireless Home Security | Night vision, Indoor/Outdoor, HD Video, Wall Mount | Includes Cloud Storage & Required Base Station | 1-Camera System','5.jpg','long 5.jpg','Works with Alexa for voice control (Alexa device sold separately); Audio not supported','Arlo Smart adds powerful intelligence to your Arlo cameras; Customize alerts to detect people, specific zones, and contact emergency responders right from your smartphone is lock screen (optional service, includes 1 month trial)',628.00,4),
	
    ('myQ Smart Garage Door Video Keypad with Wide-Angle Camera, Customizable PIN Codes, and Smartphone Control – Take Charge of Your Garage Access – Works with Chamberlain, LiftMaster and Craftsman openers','7.jpg','long 7.jpg','Wide-Angle Surveillance Camera','Unique PIN Codes: Easily create and share personalized access codes via the myQ app. Set time-specific passes to grant family, guests, or service providers access at designated hours or days.',628.00,4);




CREATE TABLE Users (userId INT AUTO_INCREMENT,userType VARCHAR(1) NOT NULL,userFName VARCHAR(100) NOT NULL,userSName VARCHAR(100) NOT NULL,userAddress VARCHAR(200) NOT NULL,userPostCode VARCHAR(20) NOT NULL,userTelNo VARCHAR(20) NOT NULL,userEmail VARCHAR(100) NOT NULL UNIQUE,userPassword VARCHAR(100) NOT NULL,CONSTRAINT u_uid_pk PRIMARY KEY (userId)) ;