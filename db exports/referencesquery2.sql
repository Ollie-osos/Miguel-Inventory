-- attempt 2
SELECT 
t1.`title`, 
t2.`field_biblio_auteur_value`,
t2.`field_biblio_editeur_value`, 
t2.`field_biblio_pp_value`, 
t2.`field_biblio_code_value`, 
t2.`field_biblio_collection_value`, 
t2.`field_biblio_langues_value`, 
t2.`field_biblio_isbn_value`, 
t2.`field_biblio_prix_value`
 FROM `node` t1 
 INNER JOIN `content_type_reference_bibliographique` t2 ON t1.`nid` = t2.`nid`
 INNER JOIN `content_field_oeuvre_images` t3 ON t1.`nid` = t3.`nid` 
 WHERE t1.`type` = 'reference_bibliographique' 