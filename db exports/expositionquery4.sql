SELECT 
t1.`title`, 
t2.`field_expo_lieu_value`,
t2.`field_expo_type_value`,
t2.`field_expo_dates_value`,
t2.`field_expo_dates_value2`,
t2.`field_expo_curator_value`,
t2.`field_expo_code_value`,
t5.`field_expo_note_value`,
t6.`field_expo_sous_titre_value`,
t7.`field_oeuvre_adresse_web_url`,
GROUP_CONCAT(t4.`filepath`) as "gallery_images",
GROUP_CONCAT(t9.`filepath`) as "featured_image",
GROUP_CONCAT(t11.`filepath`) as "documents"
 FROM `node` t1 
 LEFT JOIN `content_type_exposition` t2 ON t1.`nid` = t2.`nid`
 LEFT JOIN `content_field_oeuvre_images` t3 ON t1.`nid` = t3.`nid` 
 LEFT JOIN `content_field_files_thumb` t8 ON t1.`nid` = t8.`nid` 
 LEFT JOIN `content_field_oeuvre_docs` t10 ON t1.`nid` = t10.`nid` 
 LEFT JOIN `files` t4 ON t3.`field_oeuvre_images_fid` = t4.`fid`
 LEFT JOIN `files` t9 ON t8.`field_files_thumb_fid` = t9.`fid`
 LEFT JOIN `files` t11 ON t10.`field_oeuvre_docs_fid` = t11.`fid` 
 LEFT JOIN `content_field_expo_note` t5 ON t1.`nid` = t5.`nid`
 LEFT JOIN `content_field_expo_sous_titre` t6 ON t1.`nid` = t6.`nid` 
 LEFT JOIN `content_field_oeuvre_adresse_web` t7 ON t1.`nid` = t7.`nid` 
 WHERE t1.`type` = 'exposition' 
 GROUP BY 
t1.`title`, 
t2.`field_expo_lieu_value`,
t2.`field_expo_type_value`,
t2.`field_expo_dates_value`,
t2.`field_expo_dates_value2`,
t2.`field_expo_curator_value`,
t2.`field_expo_code_value`,
t5.`field_expo_note_value`,
t6.`field_expo_sous_titre_value`,
t7.`field_oeuvre_adresse_web_url`