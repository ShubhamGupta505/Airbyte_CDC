db = db.getSiblingDB('admin');
db.createUser({user: "admin",pwd: "admin",roles: [ { role: "userAdminAnyDatabase", db: "admin" },{ role: "dbAdminAnyDatabase", db: "admin" },{ role: "readWriteAnyDatabase", db: "admin" } ]}); 
db = db.getSiblingDB('mydb');
db.createCollection('mytable');


// For Delete in MongoDB Only UPDATE the status of _ab_cdc_deleted_at
// e.g., db.mytable.update({movie_name:"Faraar"},{$set:{"_ab_cdc_deleted_at":"1"}})

// db.createCollection('orders');
// db.colors.insert([{ _id : 1, first_name : 'Bob', last_name : 'Hopper', email : 'thebob@example.com' }]);
// db.colors.insert([{ _id : 2, first_name : 'abc', last_name : 'ddd', email : 'abdd@example.com' }]);
// db.colors.insert([{ _id : 3, first_name : 'OP', last_name : 'chat', email : 'opchat@example.com' }]);
// db.colors.insert([{ _id : 4, first_name : 'ABP', last_name : 'CP', email : 'abp@example.com' }]);


// db.orders.insert([{_id: 3,first_name: "Casper",last_name: "Cufflin",gender: "Male",city: "Oguma",email: "ccufflin0@topsy.com"}]);
// db.orders.insert([{_id: 4,first_name: "Sybila",last_name: "Loftie",gender: "Female",city: "Conchagua",email: "sloftie3@accuweather.com"}]);
// db.orders.insert([{_id: 5,first_name: "Dario",last_name: "Palfrie",gender: "Male",city: "Nagu",email: "dpalfrie4@europa.eu"}]);

db.mytable.insert([{"movie_name": "The World Of Fashion","release_period": "Normal","whether_remake": "No","whether_franchise": "No","genre": "drama","new_actor": "Yes","new_director": "No","new_music_director": "No","lead_star": "Ajaz Khan","director": "Sanjay Khandelwal","music_director": "Vaishnav Deva","number_of_screens": 5,"budgetinr": 4000000,"revenueinr": 215000,'_ab_cdc_deleted_at': null}]);

db.mytable.insert([{"movie_name": "Lakeer Ka Fakeer","release_period": "Normal","whether_remake": "No","whether_franchise": "No","genre": "drama","new_actor": "No","new_director": "Yes","new_music_director": "Yes","lead_star": "Ajaz Khan","director": "Zubair Khan","music_director": "Dilshad","number_of_screens": 60,"budgetinr": 12500000,"revenueinr": 2175000,'_ab_cdc_deleted_at': null}]);

db.mytable.insert([{"movie_name": "Calendar Girls","release_period": "Holiday","whether_remake": "No","whether_franchise": "No","genre": "drama","new_actor": "Yes","new_director": "No","new_music_director": "Yes","lead_star": "Akanksha Puri","director": "Madhur Bhandarkar","music_director": "Amal Malik","number_of_screens": 850,"budgetinr": 130000000,"revenueinr": 81900000,'_ab_cdc_deleted_at': null}]);

db.mytable.insert([{"movie_name": "Bloody Isshq","release_period": "Normal","whether_remake": "No","whether_franchise": "No","genre": "thriller","new_actor": "Yes","new_director": "No","new_music_director": "Yes","lead_star": "Akash","director": "Arup Dutta","music_director": "Ashok Bhadra","number_of_screens": 250,"budgetinr": 55000000,"revenueinr": 5000000,'_ab_cdc_deleted_at': null}]);

db.mytable.insert([{"movie_name": "Faraar","release_period": "Normal","whether_remake": "No","whether_franchise": "No","genre": "action","new_actor": "Yes","new_director": "Yes","new_music_director": "No","lead_star": "Akbar Khan","director": "Santosh Gupta","music_director": "Vaishnav Deva","number_of_screens": 25,"budgetinr": 15000000,"revenueinr": 425000,'_ab_cdc_deleted_at': null}]);

db.mytable.insert([{"movie_name": "Alag","release_period": "Normal","whether_remake": "No","whether_franchise": "No","genre": "drama","new_actor": "No","new_director": "No","new_music_director": "No","lead_star": "Akshay Kapoor","director": "Ashu Trikha","music_director": "Aadesh Shrivastava","number_of_screens": 60,"budgetinr": 80000000,"revenueinr": 5600000,'_ab_cdc_deleted_at': null}]);

db.mytable.insert([{"movie_name": "Holiday - A Soldier Is Never Off Duty","release_period": "Normal","whether_remake": "Yes","whether_franchise": "No","genre": "thriller","new_actor": "No","new_director": "No","new_music_director": "No","lead_star": "Akshay Kumar","director": "A.R. Murugadoss","music_director": "Pritam","number_of_screens": 3300,"budgetinr": 860000000,"revenueinr": 1764220000,'_ab_cdc_deleted_at': null}]);


// {
//     "movie_name": "The World Of Fashion",
//     "release_period": "Normal",
//     "whether_remake": "No",
//     "whether_franchise": "No",
//     "genre": "drama",
//     "new_actor": "Yes",
//     "new_director": "No",
//     "new_music_director": "No",
//     "lead_star": "Ajaz Khan",
//     "director": "Sanjay Khandelwal",
//     "music_director": "Vaishnav Deva",
//     "number_of_screens": 5,
//     "budgetinr": 4000000,
//     "revenueinr": 215000,
//     "_ab_cdc_deleted_at": null
//   },
//   {
    // "movie_name": "Lakeer Ka Fakeer",
    // "release_period": "Normal",
    // "whether_remake": "No",
    // "whether_franchise": "No",
    // "genre": "drama",
    // "new_actor": "No",
    // "new_director": "Yes",
    // "new_music_director": "Yes",
    // "lead_star": "Ajaz Khan",
    // "director": "Zubair Khan",
    // "music_director": "Dilshad",
    // "number_of_screens": 60,
    // "budgetinr": 12500000,
    // "revenueinr": 2175000,
    // "_ab_cdc_deleted_at": null
//   },
//   {
    // "movie_name": "Calendar Girls",
    // "release_period": "Holiday",
    // "whether_remake": "No",
    // "whether_franchise": "No",
    // "genre": "drama",
    // "new_actor": "Yes",
    // "new_director": "No",
    // "new_music_director": "Yes",
    // "lead_star": "Akanksha Puri",
    // "director": "Madhur Bhandarkar",
    // "music_director": "Amal Malik",
    // "number_of_screens": 850,
    // "budgetinr": 130000000,
    // "revenueinr": 81900000
//   },
//   {
    // "movie_name": "Bloody Isshq",
    // "release_period": "Normal",
    // "whether_remake": "No",
    // "whether_franchise": "No",
    // "genre": "thriller",
    // "new_actor": "Yes",
    // "new_director": "No",
    // "new_music_director": "Yes",
    // "lead_star": "Akash",
    // "director": "Arup Dutta",
    // "music_director": "Ashok Bhadra",
    // "number_of_screens": 250,
    // "budgetinr": 55000000,
    // "revenueinr": 5000000
//   },
//   {
    // "movie_name": "Faraar",
    // "release_period": "Normal",
    // "whether_remake": "No",
    // "whether_franchise": "No",
    // "genre": "action",
    // "new_actor": "Yes",
    // "new_director": "Yes",
    // "new_music_director": "No",
    // "lead_star": "Akbar Khan",
    // "director": "Santosh Gupta",
    // "music_director": "Vaishnav Deva",
    // "number_of_screens": 25,
    // "budgetinr": 15000000,
    // "revenueinr": 425000
//   },
//   {
    // "movie_name": "Alag",
    // "release_period": "Normal",
    // "whether_remake": "No",
    // "whether_franchise": "No",
    // "genre": "drama",
    // "new_actor": "No",
    // "new_director": "No",
    // "new_music_director": "No",
    // "lead_star": "Akshay Kapoor",
    // "director": "Ashu Trikha",
    // "music_director": "Aadesh Shrivastava",
    // "number_of_screens": 60,
    // "budgetinr": 80000000,
    // "revenueinr": 5600000
//   },
//   {
    // "movie_name": "Holiday - A Soldier Is Never Off Duty",
    // "release_period": "Normal",
    // "whether_remake": "Yes",
    // "whether_franchise": "No",
    // "genre": "thriller",
    // "new_actor": "No",
    // "new_director": "No",
    // "new_music_director": "No",
    // "lead_star": "Akshay Kumar",
    // "director": "A.R. Murugadoss",
    // "music_director": "Pritam",
    // "number_of_screens": 3300,
    // "budgetinr": 860000000,
    // "revenueinr": 1764220000
//   },

// db.orders.insert([{"movie_name": "The Shaukeens","release_period": "Normal","whether_remake": "Yes","whether_franchise": "No","genre": "comedy","new_actor": "No","new_director": "No","new_music_director": "No","lead_star": "Akshay Kumar","director": "Abhishek Sharma","music_director": "Honey Singh","number_of_screens": 1800,"budgetinr": 410000000,"revenueinr": 272025000,'_ab_cdc_deleted_at': null}])

//   {
//     "movie_name": "Welcome",
//     "release_period": "Holiday",
//     "whether_remake": "No",
//     "whether_franchise": "No",
//     "genre": "comedy",
//     "new_actor": "No",
//     "new_director": "No",
//     "new_music_director": "No",
//     "lead_star": "Akshay Kumar",
//     "director": "Anees Bazmee",
//     "music_director": "Sajid - Wajid",
//     "number_of_screens": 1250,
//     "budgetinr": 480000000,
//     "revenueinr": 1194975000
//   }

