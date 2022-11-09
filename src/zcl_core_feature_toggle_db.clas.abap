CLASS zcl_core_feature_toggle_db DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_core_feature_toggle_db .
  PROTECTED SECTION.
private section.
ENDCLASS.



CLASS ZCL_CORE_FEATURE_TOGGLE_DB IMPLEMENTATION.


  METHOD zif_core_feature_toggle_db~find_all.

    SELECT *
      FROM ztfeat_toggle
      INTO TABLE result. "#EC CI_NOWHERE

    IF sy-subrc <> 0.
      RAISE EXCEPTION TYPE zcx_core_feature_toggle_db.
    ENDIF.

  ENDMETHOD.


  METHOD zif_core_feature_toggle_db~find_by_id.

    SELECT SINGLE *
      FROM ztfeat_toggle
      INTO result
      WHERE feature = iv_feature.

    IF sy-subrc <> 0.
      RAISE EXCEPTION TYPE zcx_core_feature_toggle_db.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
