/**
 * Created by tgray on 5/5/2016.
 */
var express = require('express');
var router = express.Router();
var calmaint = require('../controllers/modules/calmaint');

router.get('/', calmaint.list);//route add roles
router.get('/add', calmaint.add);
router.post('/add', calmaint.save);
router.get('/edit/:id', calmaint.edit);
router.post('/edit/:id', calmaint.save_edit);

module.exports = router;