-- attempt 5
SELECT 
t1.`nid`,
t1.`title`, 
(SELECT `node`.`title`FROM `node` WHERE `node`.`nid` = t2.`field_oeuvre_serie_nid`) as series
 FROM `node` t1 
 LEFT JOIN `content_type_oeuvre` t2 ON t1.`nid` = t2.`nid`
 WHERE t1.`type` = 'oeuvre' 