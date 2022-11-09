CLASS zcl_core_feature_toggle DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_core_feature_toggle .

    METHODS constructor
      IMPORTING
        !io_feature_toggle_db TYPE REF TO zif_core_feature_toggle_db OPTIONAL .
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA mo_feature_toggle_db TYPE REF TO zif_core_feature_toggle_db .
    CONSTANTS:
      BEGIN OF sc_enable .
    CONSTANTS yes TYPE c VALUE 'Y'.
    CONSTANTS no  TYPE c VALUE 'N'.
    CONSTANTS END OF sc_enable .

    METHODS map_field_enable
      IMPORTING
        !iv_enable    TYPE zcore_feature_toggle_enable
      RETURNING
        VALUE(result) TYPE abap_bool .
ENDCLASS.



CLASS ZCL_CORE_FEATURE_TOGGLE IMPLEMENTATION.


  METHOD constructor.

    IF io_feature_toggle_db IS BOUND.
      mo_feature_toggle_db = io_feature_toggle_db.
    ELSE.
      CREATE OBJECT mo_feature_toggle_db TYPE zcl_core_feature_toggle_db.
    ENDIF.

  ENDMETHOD.


  METHOD map_field_enable.

    result = COND #(
      WHEN iv_enable = sc_enable-yes THEN abap_true
      WHEN iv_enable = sc_enable-no  THEN abap_false
      ELSE abap_false
    ).

  ENDMETHOD.


  METHOD zif_core_feature_toggle~is_active.

    DATA ls_ztfeature_toggle TYPE ztfeat_toggle.

    TRY.
        ls_ztfeature_toggle = mo_feature_toggle_db->find_by_id( iv_feature ).

        result = map_field_enable( ls_ztfeature_toggle-enable ).

      CATCH zcx_core_feature_toggle_db.
        result = abap_false.
    ENDTRY.

  ENDMETHOD.
ENDCLASS.
