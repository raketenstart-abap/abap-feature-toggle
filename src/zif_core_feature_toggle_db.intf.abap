interface ZIF_CORE_FEATURE_TOGGLE_DB
  public .


  methods FIND_ALL
    returning
      value(RESULT) type ZTFEATURE_TOGGLE_TAB
    raising
      ZCX_CORE_FEATURE_TOGGLE_DB .
*    RAISING
*      zcx_core_db .
  methods FIND_BY_ID
    importing
      !IV_FEATURE type ZCORE_FEATURE_TOGGLE
    returning
      value(RESULT) type ZTFEAT_TOGGLE
    raising
      ZCX_CORE_FEATURE_TOGGLE_DB .
endinterface.
