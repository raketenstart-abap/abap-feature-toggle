*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZTFEAT_TOGGLE...................................*
DATA:  BEGIN OF STATUS_ZTFEAT_TOGGLE                 .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZTFEAT_TOGGLE                 .
CONTROLS: TCTRL_ZTFEAT_TOGGLE
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZTFEAT_TOGGLE                 .
TABLES: *ZTFEAT_TOGGLE_T               .
TABLES: ZTFEAT_TOGGLE                  .
TABLES: ZTFEAT_TOGGLE_T                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
