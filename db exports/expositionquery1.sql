-- attempt 5
SELECT 
t1.`title`, 
t2.`field_expo_lieu_value`,
t2.`field_expo_type_value`,
t2.`field_expo_dates_value`,
t2.`field_expo_dates_value2`,
t2.`field_expo_curator_value`,
t2.`field_expo_code_value`,
GROUP_CONCAT(t4.`filepath`) as "filepaths"
 FROM `node` t1 
 LEFT JOIN `content_type_exposition` t2 ON t1.`nid` = t2.`nid`
 LEFT JOIN `content_field_oeuvre_images` t3 ON t1.`nid` = t3.`nid` 
 LEFT JOIN `files` t4 ON t3.`field_oeuvre_images_fid` = t4.`fid`
 WHERE t1.`type` = 'exposition' 
 GROUP BY 
 t1.`title`, 
t2.`field_expo_lieu_value`,
t2.`field_expo_type_value`,
t2.`field_expo_dates_value`,
t2.`field_expo_dates_value2`,
t2.`field_expo_curator_value`,
t2.`field_expo_code_value`,