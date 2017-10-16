Module main where

data PersonRecord = MkPersonRecord {
	name :: String,
	address :: String,
	id :: Integer,
	labels :: Labels
} deriving (Show)

data Address = MkAddress {
	line :: String,
	number :: Integer,
	street :: String,
	town :: String,
	postcode :: String
} deriving(Show)

data Label = Green | Red | Blue | Yello deriving(Show)

rec1 = MkPersonRecord
	"Gomez Guillaume"
	MkAddress("University of compiegne", 8, "rue de la republique", "compiegne", "60200" )
	0008090067
	[Green, Red]

rec2 = MkPersonRecord
	"John Doe"
	MkAddress("University of Joe", 8, "rue de l'inconnu", "Lost city", "00000" )
	0008090067
	[Green, Red, Yellow]

 -- main = putStrin $ show [rec1, rec2]

rec_str =  show [rec1,rec2]
    main = putStrLn $ parseShow rec_str