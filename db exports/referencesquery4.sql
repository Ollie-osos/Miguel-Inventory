-- attempt 5
SELECT 
t1.`title`, 
t2.`field_biblio_auteur_value`,
t2.`field_biblio_editeur_value`, 
t2.`field_biblio_pp_value`, 
t2.`field_biblio_code_value`, 
t2.`field_biblio_collection_value`, 
t2.`field_biblio_langues_value`, 
t2.`field_biblio_isbn_value`, 
t2.`field_biblio_prix_value`,
 GROUP_CONCAT(t4.`filepath`) as "filepaths"
 FROM `node` t1 
 LEFT JOIN `content_type_reference_bibliographique` t2 ON t1.`nid` = t2.`nid`
 LEFT JOIN `content_field_oeuvre_images` t3 ON t1.`nid` = t3.`nid` 
 LEFT JOIN `files` t4 ON t3.`field_oeuvre_images_fid` = t4.`fid`
 WHERE t1.`type` = 'reference_bibliographique' 
 GROUP BY 
 t1.`title`, 
t2.`field_biblio_auteur_value`,
t2.`field_biblio_editeur_value`, 
t2.`field_biblio_pp_value`, 
t2.`field_biblio_code_value`, 
t2.`field_biblio_collection_value`, 
t2.`field_biblio_langues_value`, 
t2.`field_biblio_isbn_value`, 
t2.`field_biblio_prix_value`