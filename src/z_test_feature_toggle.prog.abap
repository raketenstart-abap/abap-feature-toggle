*&---------------------------------------------------------------------*
*& Report Z_TEST_FEATURE_TOGGLE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_test_feature_toggle.

DATA go_feature_toggle TYPE REF TO zif_core_feature_toggle.
DATA gv_is_active      TYPE c.

CREATE OBJECT go_feature_toggle TYPE zcl_core_feature_toggle.

gv_is_active = go_feature_toggle->is_active( zcl_core_feature_toggle_c=>ft_std_feat_toggle ).

WRITE |Feature toggle { zcl_core_feature_toggle_c=>ft_std_feat_toggle }: { gv_is_active }|.
