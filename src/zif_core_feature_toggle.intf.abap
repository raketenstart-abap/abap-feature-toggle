interface ZIF_CORE_FEATURE_TOGGLE
  public .


  methods IS_ACTIVE
    importing
      !IV_FEATURE type ZCORE_FEATURE_TOGGLE
    returning
      value(RESULT) type ABAP_BOOL .
endinterface.
