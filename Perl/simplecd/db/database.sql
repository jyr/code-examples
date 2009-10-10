CREATE TABLE artist (
    artistid INTEGER  NOT NULL AUTO_INCREMENT,
    name TEXT NOT NULL,
	PRIMARY KEY (artistid)
  );

  CREATE TABLE cd (
    cdid INTEGER NOT NULL AUTO_INCREMENT,
    artist INTEGER NOT NULL REFERENCES artist(artistid),
    title TEXT NOT NULL,
	PRIMARY KEY (cdid)
  );

  CREATE TABLE track (
    trackid INTEGER NOT NULL AUTO_INCREMENT,
    cd INTEGER NOT NULL REFERENCES cd(cdid),
    title TEXT NOT NULL,
	PRIMARY KEY (trackid)
  );
