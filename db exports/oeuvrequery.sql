-- attempt 5
SELECT 
t1.`title`, 
t5.`field_expo_note_value`,
t6.`field_expo_sous_titre_value`,
t7.`field_oeuvre_adresse_web_url`,
 GROUP_CONCAT(t4.`filepath`) as "filepaths"
 FROM `node` t1 
 LEFT JOIN `content_type_oeuvre` t2 ON t1.`nid` = t2.`nid`
 LEFT JOIN `content_field_oeuvre_images` t3 ON t1.`nid` = t3.`nid` 
 LEFT JOIN `files` t4 ON t3.`field_oeuvre_images_fid` = t4.`fid`
 LEFT JOIN `content_field_expo_note` t5 ON t1.`nid` = t5.`nid`
 LEFT JOIN `content_field_expo_sous_titre` t6 ON t1.`nid` = t6.`nid` 
 LEFT JOIN `content_field_oeuvre_adresse_web` t7 ON t1.`nid` = t7.`nid` 
 WHERE t1.`type` = 'oeuvre' 
 GROUP BY 
 t1.`title`, 
t5.`field_expo_note_value`,
t6.`field_expo_sous_titre_value`,
t7.`field_oeuvre_adresse_web_url`