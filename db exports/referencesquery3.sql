-- attempt 1
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
t4.`filename`,
t4.`filepath`
 FROM `node` t1 
 INNER JOIN `content_type_reference_bibliographique` t2 ON t1.`nid` = t2.`nid`
 INNER JOIN `content_field_oeuvre_images` t3 ON t1.`nid` = t3.`nid` 
 OUTER JOIN `files` t4 on t3.`field_oeuvre_images_fid` = t4.`fid`
 WHERE t1.`type` = 'reference_bibliographique' 