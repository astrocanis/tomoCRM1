/**
 * Created by tgray on 5/5/2016.
 */

var calmaint_model = require('../../models/calmaint');


var calmaint_controller = {

    list: function(req, res) {
        calmaint_model.list().then(function (rows) {
            res.json({data: rows});
        });
    },


    add : function(req, res){
        res.render('calmaint/add_calmaint',{page_title:"Add Calendars and Events -Node.js"})
    },

    save : function(req,res){
        var input = JSON.parse(JSON.stringify(req.body));
        var cal_data = {
            NAME        : input.name,
            WEEKMASK 	: input.weekmask,
            ACTIVE_FLAG : input.active_flag
        };
        var event_data = {
            EVENT_TYPE      : input.event_type,
            EVENT_DATE   	: input.event_date,
            EVENT_NAME      : input.name,
            EVENT_ACTIVE    : input.active_flag
        };
        calmaint_model.save(cal_data, event_data).then(function(){
            res.redirect('/calmaint');
        });
    },

    edit : function(req, res){
        var id = req.params.id;
        calmaint_model.edit(id).then(function(rows){
            res.json({data: rows})
        });

    },

    save_edit : function(req,res){
        var input = JSON.parse(JSON.stringify(req.body));
        var id = req.params.id;
        var event_id = input.event_id;
        var cal_data = {
            NAME        : input.first_name,
            EVENT_DATE 	: input.last_name,
            WEEK_MASK   : input.middle_name,
            ACTIVE_FLAG : input.active_flag
        };
        var event_data = {
            EVENT_TYPE   : input.event_type,
            EVENT_DATE 	 : input.event_date,
            EVENT_NAME   : input.event_name,
            EVENT_ACTIVE : input.active_flag
        };
        calmaint_model.save_edit(id, cal_data, event_data).then(function(){
            res.redirect('/calmaint');
        });

    },

    //TODO How are we deleting the client?  Active, inactive, deleted?
    delete : function(req,res){

    },

    //TODO Search Functionality
    search : function(req, res){

    }

};

module.exports = calmaint_controller;