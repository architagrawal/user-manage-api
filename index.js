const express = require("express");
const app = express();
const pool = require("./db");
app.use(express.json());
//getting all reservations
app.get("/reservations",async(req, res) => {
    try{
        const allReservations = await pool.query("SELECT * FROM reservation");
        res.json(allReservations.rows);
    }
    catch(err){
        console.error(err.message);
    }
});
//1. User registration
app.post("/new_user",async(req, res) => {
    
    try{
        const{user_email_id,user_first_name,
            user_last_name,user_isid,
            user_timezone,notification_identifier,user_identifier} = req.body;
            console.log(user_email_id,user_first_name,
            user_last_name,user_isid,
            user_timezone,notification_identifier,user_identifier);
            
        
        const user_new = await pool.query(`INSERT INTO user_detail 
        (user_email_id,user_first_name, user_last_name, user_isid,
             created_date, last_updated_date, user_timezone, 
             notification_identifier, user_identifier) 
             values ($1, $2, $3, $4, current_timestamp, current_timestamp, $5, $6, $7) returning *`,
            [user_email_id, user_first_name,
            user_last_name, user_isid,
            user_timezone, notification_identifier, user_identifier]
            );
            
            /* {
    "
    user_email_id":"a@gmail.com",
"user_first_name":"bell",
"user_last_name":"ringed",
"user_isid":"BR",
"user_timezone":"INdia",
"notification_identifier":"dcwgsd",
"user_identifier":"cwersvd"
}
*/
        res.json(user_new.rows);
        }
    catch(err){
        console.error(err.message);
    }
});
//2. Saving user reservation
app.post("/new_reservation",async(req, res) => {
    
    try{
        const{reservation_date,  team_floor_mapping_id,
              desk_id, user_detail_id, slot_id} = req.body;
            
            console.log(reservation_date,  team_floor_mapping_id,
                desk_id, user_detail_id, slot_id);
            
            
             
        const reservation_new = await pool.query(`insert into reservation 
        (reservation_date, created_date, last_updated_date, 
            team_floor_mapping_id, desk_id, user_detail_id, slot_id, is_deleted)

             values ($1, current_timestamp, current_timestamp, $2,$3,$4,$5,false ) returning *`,
            [reservation_date,
                 team_floor_mapping_id,
                 desk_id, user_detail_id, slot_id]
            );
            
            /* {
    "reservation_date":"2022-04-19",
"team_floor_mapping_id":5,
"desk_id":48,
"user_detail_id":6,
"slot_id":1
}
*/
        res.json(reservation_new.rows);
        }
    catch(err){
        console.error(err.message);
    }
});
//3. Getting user reservation
app.get("/reservations/:user_id",async(req, res) => {
    const{user_id} = req.params;
    try{
        const reservations = await pool.query("SELECT * FROM reservation WHERE user_detail_id = $1", [user_id]);
        res.json(reservations.rows);
    }
    catch(err){
        console.error(err.message);
    }
});
//4. Cancelling user reservation
app.put("/cancel_reservations",async(req, res) => {
    const{user_id} = req.body;
    
    try{
        const reservations = await pool.query("UPDATE reservation SET is_deleted=true,last_updated_date=current_timestamp WHERE user_detail_id = $1 returning *", [user_id]);
       
        res.json(reservations.rows);
    }
    catch(err){
        console.error(err.message);
    }
});
/*
{
    "user_id": 6
}
*/
//5. Updating user reservation
app.put("/update_reservations",async(req, res) => {
    const{user_id,date} = req.body;
    console.log("got data")
    try{
        const reservations = await pool.query(`UPDATE reservation SET reservation_date=$2,
        last_updated_date=current_timestamp WHERE user_detail_id = $1 returning *`, [user_id,date]);
        console.log(" data done")
        res.json(reservations.rows);
    }
    catch(err){
        console.error(err.message);
    }
});
/*{
    "user_id": 6,
    "date": "2022-05-06"
}*/
//6. Check-in reservation
app.post("/check_in",async(req, res) => {
    
    try{
        const{ user_detail_id, reservation_id} = req.body;
            
            
        
        const checkin_new = await pool.query(`INSERT INTO check_in 
        (created_date, last_updated_date, user_detail_id, reservation_id) 
             values (current_timestamp,current_timestamp,$1,$2) returning *`,
            [user_detail_id, reservation_id]
            );
            
            /* {
    "user_detail_id": 4,
        "reservation_id": 45
}
*/
        res.json(checkin_new.rows);
        }
    catch(err){
        console.error(err.message);
    }
});

app.listen(5000,()=>{
    console.log("server is running on port 5000");
});