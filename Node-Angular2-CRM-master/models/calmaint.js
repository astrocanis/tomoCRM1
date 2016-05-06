/**
 * Created by tgray on 5/5/2016.
 */
var dbconn = require('../libs/database/database_connection');
var Promise = require('bluebird');


var calmaint = {

    /*
     * This gets all people in a list of people.
     */
    list: function(){
        return new Promise(function (resolve, reject) {
            dbconn.query("SELECT CALENDAR_ID, CALENDAR_NAME, WEEK_MASK, ACTIVE_FLAG FROM CALENDARS", function (err, rows) {
                if(err)
                    console.log("Error Selecting : %s ", err);
                return (err ? reject(err) : resolve(rows));
            });
        });
    },

    /*
     * This saves new people into the database
     */
    save: function(person_data, address_data){
        var person_promise = new Promise(function(resolve, reject) {
            dbconn.query("INSERT INTO CALENDARS set ? ",[cal_data], function (err, rows) {
                return (err ? reject(err) : resolve(rows.insertId));//InsertId is grabbing the mysql ID# from the insert, this will need to change when we switch to GUUID
            });
        });
        var address_promise = new Promise(function(resolve, reject) {
            dbconn.query("INSERT INTO EVENTS set ? ",[event_data], function (err, rows) {
                return (err ? reject(err) : resolve(rows.insertId));//InsertId is grabbing the mysql ID# from the insert, this will need to change when we switch to GUUID
            });
        });
    },

    //TODO Will need to update this to query address and phone number and everything else separately. so we can do for loops in our view
    /*
     * This gets the edit data for the person you are trying to edit. Which include:
     * First Name, Last Name, Middle Name, Address, Address Line1, Address Line2, City, State, Country, Postal Code
     */
    edit: function(id){
        return new Promise(function(resolve, reject){
            dbconn.query("SELECT a.CALENDAR_ID, a.NAME, a.WEEK_MASK, a.ACTIVE_FLAG, b.EVENT_ID, b.EVENT_NAME, b.EVENT_DATE, b.EVENT_TYPE, b.ACTIVE_FLAG FROM CALENDARS a LEFT JOIN ADDRESSES b on b.CALENDAR_ID = a.CALENDAR_ID where a.ID = ?", [id], function(err, rows){
                return (err ? reject(err) : resolve(rows));
            });
        });
    },

    save_edit: function(id, address_id, person_data, address_data){
        var calendar_promise = new Promise(function(resolve, reject){
            dbconn.query("UPDATE CALENDARS set ? WHERE id = ? ",[cal_data,id],function(err,rows) {
                if (err)
                    console.log("Error Selecting : %s ", err);
                return (err ? reject(err) : resolve(rows));
            });
        });
        var event_promise = new Promise(function(resolve, reject) {
            dbconn.query("UPDATE EVENTS set ? WHERE ID = ?",[event_data, address_id], function (err, rows) {
                if (err)
                    console.log("Error Selecting : %s ", err);
                return (err ? reject(err) : resolve(rows));
            });
        });

        return Promise.join(calendar_promise, event_promise);
    }

};

module.exports = calmaint;