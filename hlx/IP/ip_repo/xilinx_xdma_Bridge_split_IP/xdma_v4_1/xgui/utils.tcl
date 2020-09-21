proc update_PL_LINK_CAP_MAX_LINK_SPEED {PL_LINK_CAP_MAX_LINK_SPEED PL_LINK_CAP_MAX_LINK_WIDTH enable_gen4 local_test speed c_xfamily c_xfamily_gen2 silicon_rev device split_dma pcie_blk_locn }  {

 set SPEED_RANGE [list]


    if {$c_xfamily == "virtexuplus" || $c_xfamily == "kintexuplus" || $c_xfamily == "zynquplus" || $c_xfamily == "zynquplusrfsoc" || $c_xfamily == "virtexuplushbm" || $c_xfamily == "virtexuplus58g"} {
      if {($PL_LINK_CAP_MAX_LINK_WIDTH eq "X16" && ($speed == "-1" || $speed == "-1LV" || $speed == "-2LV" || $speed == "-1L")) ||  ($PL_LINK_CAP_MAX_LINK_WIDTH eq "X8" && ($speed == "-1LV" || $speed == "-1L") )  } {

        if {$c_xfamily == "virtexuplushbm" && ($speed == "-2LV" || $speed == "-1")} {
          lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s,8.0_GT/s" 
        } elseif {$c_xfamily != "virtexuplushbm" && $speed == "-1"} {
          lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s,8.0_GT/s" 
        } else {
          lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s" 
	      }
      } elseif {$PL_LINK_CAP_MAX_LINK_WIDTH eq "X16" && ($device == "XAZU4EV" || $device == "XAZU5EV" || $device == "XCZU4EV" || $device == "XCZU5EV" || $device == "XQZU5EV" || $device == "XCZU4CG" || $device == "XCZU4EG" || $device == "XCZU5CG" || $device == "XCZU5EG")} { 
       lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s" 
      } elseif {$PL_LINK_CAP_MAX_LINK_WIDTH ne "X16" && ($enable_gen4  && ([string match "PCIE4C*" $pcie_blk_locn] ||  $local_test) ) &&  ($speed == "-2" || $speed == "-3" || $speed == "-2L" ) } { 
      #send_msg INFO 912 "msg pcie_blk_locn:  pcie_blk_locn" 
       lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s,8.0_GT/s,16.0_GT/s" 
      } else {
	if { $split_dma } {
         lappend SPEED_RANGE "8.0_GT/s"
	} else {
         lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s,8.0_GT/s" 
       }
      }
    } elseif {$c_xfamily == "kintexu" || $c_xfamily == "virtexu"} {
      if {($speed == "-1" || $speed == "-1L" ||  $speed == "-1LV" || $speed == "-1H" || $speed == "-1HV")} {
        if {($device == "XCVU095" && $silicon_rev == "ES1") || (($device == "XCKU060" || $device == "XQKU060") && $silicon_rev == "ES2") || ($device == "XCKU115" && $silicon_rev == "ES2") || ($device == "XCVU440" && $silicon_rev == "ES2")} {
         lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s" 
        } else {
          if {$PL_LINK_CAP_MAX_LINK_WIDTH ne "X8"} {
           lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s,8.0_GT/s" 
          } else {
           lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s" 
          }
        }
      } else {
       lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s,8.0_GT/s" 
      }
    ## If this is for a gen2 device Disable Gen3
    } elseif {$c_xfamily_gen2 == "ARTIX7"} { 
      if {([string tolower "$speed"] == "-1") || ([string tolower $speed"] == "-1i") || ([string tolower "$speed"] == "-1m") || ([string tolower "$speed"] == "-1q") || ([string tolower "$speed"] == "-1l") || ([string tolower "$speed"] == "-1il")} {
       lappend SPEED_RANGE "2.5_GT/s" 
      } else {
        if {$device == "XC7A15TL" || $device == "XC7A35TL" || $device == "XC7A50TL" || $device == "XC7A75TL" || $device == "XC7A100TL" || $device == "XC7A200TL"} { 
         lappend SPEED_RANGE "2.5_GT/s" 
        } else { 
         lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s" 
        }
      }
    } elseif {$c_xfamily_gen2 == "KINTEX7"} { 
      if {([string tolower "$speed"] == "-1") || ([string tolower $speed"] == "-1i") || ([string tolower "$speed"] == "-1m") || ([string tolower "$speed"] == "-1ml") } {
        if {$PL_LINK_CAP_MAX_LINK_WIDTH == "X8"} {
         lappend SPEED_RANGE "2.5_GT/s" 
	} else {
	 lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s" 
	}
      } else {
        if {$device == "XC7K70TL" || $device == "XC7K160TL" || $device == "XA7K160TL"  || $device == "XC7K325TL" || $device == "XC7K355TL" || $device == "XC7K410TL" || $device == "XC7K420TL" || $device == "XC7K480TL" || $device == "XQ7K325TL" || $device == "XQ7K410TL"} { 
         lappend SPEED_RANGE "2.5_GT/s" 
        } else {
	 lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s" 
	}
      }
    } elseif {$c_xfamily_gen2 == "VIRTEX7" && ($device == "XC7VX485T" || $device == "XC7V585T" || $device == "XC7V2000T" || $device == "XQ7V585T" || $device == "XQ7VX485T")} { 
      if {([string tolower "$speed"] == "-1") || ([string tolower $speed"] == "-1i") || ([string tolower "$speed"] == "-1m")} {
	if {$PL_LINK_CAP_MAX_LINK_WIDTH == "X8"} {
	 lappend SPEED_RANGE "2.5_GT/s" 
	} else {
	 lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s" 
	}
      } else {
	lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s" 
      }
    } elseif {$c_xfamily_gen2 == "ZYNQ"} { 
      if {([string tolower "$speed"] == "-1") || ([string tolower $speed"] == "-1i") || ([string tolower "$speed"] == "-1q") || ([string tolower "$speed"] == "-1l") || ([string tolower "$speed"] == "-1ql")} {
        if {$PL_LINK_CAP_MAX_LINK_WIDTH == "X8"} {
	 lappend SPEED_RANGE "2.5_GT/s" 
	} elseif {($device == "XC7Z015" || $device == "XC7Z015I")} { 
	 lappend SPEED_RANGE "2.5_GT/s" 
	} else {
	 lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s" 
        }
      } else {
       lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s" 
      }
    } else {
      if {($speed == "-1") || ($speed == "-1L") || ($speed == "-1I") || ($speed == "-1M")} {
        lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s" 
      } else {
       lappend SPEED_RANGE "2.5_GT/s,5.0_GT/s,8.0_GT/s" 
      }
    }
  return $SPEED_RANGE
}

################################################
#   NEW DEVICE # 1
################################################
proc update_PL_LINK_CAP_MAX_LINK_WIDTH {PL_LINK_CAP_MAX_LINK_WIDTH fmly device pkg speed_grade en_gt_selection pcie_blk select_quad boardIfName vu9p_board } {

   set WIDTH_RANGE [list]

    if {($fmly eq "VIRTEXUPLUS") || ($fmly eq "KINTEXUPLUS") || ($fmly eq "ZYNQUPLUS") || ($fmly eq "ZYNQUPLUSRFSOC") || ($fmly eq "VIRTEXUPLUSHBM") || ($fmly eq "VIRTEXUPLUS58G")} {
      if {$en_gt_selection == "true"} {
        ## Following GT Quads/devices/packages should allow only X1,X2,X4,X8 range
        if { ((( $device == "XCZU49DR"  || $device == "XCZU46DR")  ||  ( ($pkg == "FSVG1517" || $pkg == "FFVG1517") &&  ($device == "XCZU48DR" ||  $device == "XCZU47DR" ||  $device == "XCZU45DR" )) ) && ($select_quad == "GTY_Quad_130" || $select_quad == "GTY_Quad_129"))
        || ((( ($pkg == "FSVE1156" || $pkg == "FFVE1156") &&  ($device == "XCZU48DR" ||  $device == "XCZU47DR"  ||  $device == "XCZU45DR" )) ) && ($select_quad == "GTY_Quad_129" )) ||
            ((($device == "XCVU3P" && $pkg == "FFVC1517") || ($device == "XCQU3P" && $pkg == "FFRC1517")  ) && ($select_quad == "GTY_Quad_126" || $select_quad == "GTY_Quad_125" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225")) 
        || (($pkg == "FIGD2104" && $device == "XCVU27P") && ($select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225"))
        || (($pkg == "FSGA2577" && $device == "XCVU27P") && ($select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225"))
          || (($device == "XCVU5P" || $device == "XCVU7P" || $device == "XCVU7P_C"|| $device == "XQVU7P") && ($pkg == "FLVA2104" || $pkg == "FLRA2104") && ($select_quad == "GTY_Quad_127" || $select_quad == "GTY_Quad_126" || $select_quad == "GTY_Quad_132" || $select_quad == "GTY_Quad_131" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_233" || $select_quad == "GTY_Quad_232")) 
          || (($device == "XCVU5P" || $device == "XCVU7P" || $device == "XCVU7P_C" || $device == "XQVU7P") && ($pkg == "FLVB2104" || $pkg == "FLRB2104") && ($select_quad == "GTY_Quad_127" || $select_quad == "GTY_Quad_126" || $select_quad == "GTY_Quad_131" || $select_quad == "GTY_Quad_130" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_231" || $select_quad == "GTY_Quad_230"))
          || (($device == "XCVU5P" || $device == "XCVU7P"|| $device == "XCVU7P_C") && $pkg == "FLVC2104" && ($select_quad == "GTY_Quad_126" || $select_quad == "GTY_Quad_125" || $select_quad == "GTY_Quad_131" || $select_quad == "GTY_Quad_130" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_231" || $select_quad == "GTY_Quad_230"))
          || (($device == "XCVU9P" || $device == "XQVU9P") && ($pkg == "FLGA2104" || $pkg == "FLQA2104") && ($select_quad == "GTY_Quad_127" || $select_quad == "GTY_Quad_126" || $select_quad == "GTY_Quad_122" || $select_quad == "GTY_Quad_121" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_233" || $select_quad == "GTY_Quad_232")) 
          || (($device == "XCVU9P" || $device == "XQVU9P") && ($pkg == "FLGB2104" || $pkg == "FLQB2104" ) && ($select_quad == "GTY_Quad_122" || $select_quad == "GTY_Quad_121" || $select_quad == "GTY_Quad_126" || $select_quad == "GTY_Quad_125" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_231" || $select_quad == "GTY_Quad_230"))
          || ($device == "XCVU9P" && $pkg == "FLGC2104" && ($select_quad == "GTY_Quad_122" || $select_quad == "GTY_Quad_121" || $select_quad == "GTY_Quad_126" || $select_quad == "GTY_Quad_125" || $select_quad == "GTY_Quad_131" || $select_quad == "GTY_Quad_130" || $select_quad == "GTY_Quad_222" || $select_quad == "GTY_Quad_221" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_231" || $select_quad == "GTY_Quad_230"))
          || ($device == "XCVU9P" && $pkg == "FLGA2577" && ($select_quad == "GTY_Quad_121" || $select_quad == "GTY_Quad_120" || $select_quad == "GTY_Quad_126" || $select_quad == "GTY_Quad_125" || $select_quad == "GTY_Quad_131" || $select_quad == "GTY_Quad_130" || $select_quad == "GTY_Quad_221" || $select_quad == "GTY_Quad_220" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_231" || $select_quad == "GTY_Quad_230"))
          || (($device == "XCVU9P" || $device == "XQVU9P" ) && ($pkg == "FSGD2104" || $pkg == "FSQD2104" )&& ($select_quad == "GTY_Quad_122" || $select_quad == "GTY_Quad_121" || $select_quad == "GTY_Quad_126" || $select_quad == "GTY_Quad_125" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_231" || $select_quad == "GTY_Quad_230"))
        || ($device == "XCU200" && $pkg == "FSGD2104" && ($select_quad == "GTY_Quad_126" || $select_quad == "GTY_Quad_125" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_231"))
        || ($device == "XCU250" && $pkg == "FIGD2104" && ($select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_231"))
        || (($pkg == "FSVH2892" && $device == "XCU280") && ($select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225"))
          || (($device == "XCVU11P" || $device == "XQVU11P") && ($pkg == "FLGA2577" || $pkg == "FLGC2104" || $pkg == "FLRC2104") && ($select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_230" || $select_quad == "GTY_Quad_229" || $select_quad == "GTY_Quad_234" || $select_quad == "GTY_Quad_233"))
          || ($device == "XCVU11P" && ($pkg == "FLGB2104" || $pkg == "FLGF1924") && ($select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_230" || $select_quad == "GTY_Quad_229" || $select_quad == "GTY_Quad_233"))
          || ($device == "XCVU11P" && $pkg == "FSGD2104" && ($select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_230" || $select_quad == "GTY_Quad_229" || $select_quad == "GTY_Quad_233"))
          || ($device == "XCVU13P" && $pkg == "FHGA2104" && ($select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_231" || $select_quad == "GTY_Quad_230"))
          || ($device == "XQVU13P" && $pkg == "FHQA2104" && ($select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_231" || $select_quad == "GTY_Quad_230"))
          || ($device == "XCVU13P" && ($pkg == "FHGB2104" || $pkg == "FIGD2104" ) && ($select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_230" || $select_quad == "GTY_Quad_229" || $select_quad == "GTY_Quad_233"))
          || ($device == "XQVU13P" && ($pkg == "FHQB2104" || $pkg == "FIQD2104" ) && ($select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_230" || $select_quad == "GTY_Quad_229" || $select_quad == "GTY_Quad_233"))
          || ($device == "XCVU13P" && $pkg == "FHGC2104" && ($select_quad == "GTY_Quad_223" || $select_quad == "GTY_Quad_222" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_230" || $select_quad == "GTY_Quad_229" || $select_quad == "GTY_Quad_233"))
          || ($device == "XCVU13P" && ($pkg == "FLGA2577" || $pkg == "FSGA2577") && ($select_quad == "GTY_Quad_222" || $select_quad == "GTY_Quad_221" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_230" || $select_quad == "GTY_Quad_229" || $select_quad == "GTY_Quad_234" || $select_quad == "GTY_Quad_233"))
          || ($device == "XCKU11P" && $pkg == "FFVE1517" && (($select_quad == "GTY_Quad_130" && $pcie_blk == "X0Y3") || $select_quad == "GTY_Quad_129" || $select_quad == "GTY_Quad_128" || $select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225" || ($select_quad == "GTH_Quad_227" && $pcie_blk == "X1Y1")))
          || (($device == "XCKU11P" || $device == "XCKU15P") && $pkg == "FFVA1156" && ($select_quad == "GTY_Quad_130" || $select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225" || ($select_quad == "GTH_Quad_227" && $pcie_blk == "X1Y1")))
        || (( $device == "XQKU15P") && $pkg == "FFRA1156" && ($select_quad == "GTY_Quad_130" || $select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225" || ($select_quad == "GTH_Quad_227" && $pcie_blk == "X1Y1")))	  
          || ($device == "XCKU11P" && $pkg == "FFVD900" && ($select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225"))
          || ($device == "XCKU15P" && $pkg == "FFVE1517" && ($select_quad == "GTY_Quad_131" || ($select_quad == "GTY_Quad_130" && $pcie_blk == "X0Y3") || $select_quad == "GTY_Quad_129" || $select_quad == "GTY_Quad_128" || $select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225" || ($select_quad == "GTH_Quad_227" && ($pcie_blk == "X1Y1" || $pcie_blk == "X1Y2")) || ($select_quad == "GTH_Quad_229" && $pcie_blk == "X1Y2") || ($select_quad == "GTH_Quad_228" && $pcie_blk == "X1Y2") || ($select_quad == "GTH_Quad_230"))) 
        || ($device == "XQKU15P" && $pkg == "FFRE1517" && ($select_quad == "GTY_Quad_131" || ($select_quad == "GTY_Quad_130" && $pcie_blk == "X0Y3") || $select_quad == "GTY_Quad_129" || $select_quad == "GTY_Quad_128" || $select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225" || ($select_quad == "GTH_Quad_227" && ($pcie_blk == "X1Y1" || $pcie_blk == "X1Y2")) || ($select_quad == "GTH_Quad_229" && $pcie_blk == "X1Y2") || ($select_quad == "GTH_Quad_228" && $pcie_blk == "X1Y2") || ($select_quad == "GTH_Quad_230"))) 	  
          || ($device == "XCKU15P"  && ($pkg == "FFVA1760" || $pkg == "FFVE1760") && ($select_quad == "GTY_Quad_131" || ($select_quad == "GTY_Quad_130" && $pcie_blk == "X0Y3") || $select_quad == "GTY_Quad_129" || $select_quad == "GTY_Quad_128" || $select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225" || ($select_quad == "GTH_Quad_227" && ($pcie_blk == "X1Y1" || $pcie_blk == "X1Y2")) || ($select_quad == "GTH_Quad_229" && $pcie_blk == "X1Y2") || ($select_quad == "GTH_Quad_228" && $pcie_blk == "X1Y2") || ($select_quad == "GTH_Quad_230")))
          || (($device == "XCKU3P" || $device == "XCKU5P") && ($pkg == "FFVA676" || $pkg == "FFVB676" || $pkg == "FFVD900" || $pkg == "SFVB784") && ($select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225"))
          || (($device == "XCZU11EG" || $device == "XCZU17EG" || $device == "XCZU19EG" || $device == "XQZU19EG" || $device == "XCU25") && ($pkg == "FFVC1760" || $pkg == "FFRC1760") && ($select_quad == "GTY_Quad_130" || $select_quad == "GTY_Quad_129" || $select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225" || ($select_quad == "GTH_Quad_227" && ($pcie_blk == "X1Y1" || $pcie_blk == "X1Y2")) || ($select_quad == "GTH_Quad_229" && $pcie_blk == "X1Y2") || ($select_quad == "GTH_Quad_228" && $pcie_blk == "X1Y2")))
         || ($device == "XQZU11EG"  && $pkg == "FFRC1760" && ($select_quad == "GTY_Quad_130" || $select_quad == "GTY_Quad_129" || $select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225" || ($select_quad == "GTH_Quad_227" && ($pcie_blk == "X1Y1" )) ))	  
          || (($device == "XCZU17EG" || $device == "XCZU19EG") && $pkg == "FFVE1924" && ($select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225" || ($select_quad == "GTH_Quad_227" && ($pcie_blk == "X1Y1" || $pcie_blk == "X1Y2")) || ($select_quad == "GTH_Quad_229" && $pcie_blk == "X1Y2") || ($select_quad == "GTH_Quad_228" && $pcie_blk == "X1Y2"))) 
          || (($device == "XCZU19EG" || $device == "XCZU11EG" || $device == "XCZU17EG" || $device == "XQZU19EG") && ($pkg == "FFVB1517" || $pkg == "FFVC1156" || $pkg == "FFRB1517") && ($select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225") || ($select_quad == "GTH_Quad_227" && $pcie_blk == "X1Y2"))
          || ($device == "XCZU11EG" && $pkg == "FFVF1517" && ($select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225" || ($select_quad == "GTH_Quad_227" && $pcie_blk == "X1Y1")))
          || ($device == "XAZU11EG" && $pkg == "FFVF1517" && ($select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225" || ($select_quad == "GTH_Quad_227" && $pcie_blk == "X1Y1")))	  
          || (($device == "XCZU19EG" || $device == "XCZU17EG") && $pkg == "FFVD1760" && ($select_quad == "GTY_Quad_130" || $select_quad == "GTY_Quad_129" || $select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225" || ($select_quad == "GTH_Quad_227" && ($pcie_blk == "X1Y1" || $pcie_blk == "X1Y2")) || ($select_quad == "GTH_Quad_229" && $pcie_blk == "X1Y2") || ($select_quad == "GTH_Quad_228" && $pcie_blk == "X1Y2") ))
          || (($device == "XCZU4EV" || $device == "XCZU5EV" || $device == "XQZU5EV") && ($pkg == "FBVB900" || $pkg == "FFRB900") && ($select_quad == "GTH_Quad_225" || $select_quad == "GTH_Quad_224"))
          || (($device == "XCZU4CG" || $device == "XCZU4EG" || $device == "XCZU5CG" || $device == "XCZU5EG") && $pkg == "FBVB900" && ($select_quad == "GTH_Quad_225" || $select_quad == "GTH_Quad_224"))
          || (($device == "XCZU7EV" || $device == "XQZU7EV" || $device == "XCU30" ) && ($pkg == "FBVB900" || $pkg == "FFRB900") && ($select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225"))
          || (($device == "XCZU7CG" || $device == "XCZU7EG") && $pkg == "FBVB900" && ($select_quad == "GTH_Quad_226" || $select_quad == "GTH_Quad_225"))
          || (($device == "XCZU7EV" || $device == "XQZU7EV") && ($pkg == "FFVC1156" || $pkg == "FFVF1517" || $pkg == "FFRC1156") && ($select_quad == "GTH_Quad_225" || $select_quad == "GTH_Quad_224")) 
          || (($device == "XCZU7CG" || $device == "XCZU7EG" ) && ($pkg == "FFVC1156" || $pkg == "FFVF1517") && ($select_quad == "GTH_Quad_225" || $select_quad == "GTH_Quad_224"))
        || (((($device == "XCZU21DR" || $device == "XQZU21DR") && ($pkg == "FFVD1156" || $pkg == "FFRD1156")) || (($device == "XCZU29DR" || $device == "XCZU39DR" ) && ($pkg == "FFVF1760" || $pkg == "FSVF1760")) ||($pkg == "FFRF1760" && $device == "XQZU29DR") || ($device == "XCZU28DR" && ($pkg == "FFVG1517" || $pkg == "FSVG1517")) || ($device == "XCZU27DR" && ($pkg == "FFVG1517" || $pkg == "FSVG1517"))) && ($select_quad == "GTY_Quad_130" || $select_quad == "GTY_Quad_129"))	  
          || ((($device == "XCZU27DR" && ($pkg == "FFVE1156" || $pkg == "FSVE1156")) || (($device == "XCZU28DR" || $device == "XQZU28DR") && ($pkg == "FFVE1156" || $pkg == "FSVE1156" || $pkg == "FFRE1156")) || ($device == "XCZU25DR" && ($pkg == "FSVE1156" || $pkg == "FSVG1517" || $pkg == "FFVE1156" || $pkg == "FFVG1517"))) && ($select_quad == "GTY_Quad_129"))	  
          || (($device == "XCVU37P"||$device == "XCVU47P" || $device == "XQVU37P")  && ($pkg == "FSVH2892" || $pkg == "FSQH2892")&& ($select_quad == "GTY_Quad_126" || $select_quad == "GTY_Quad_125" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_228" || $select_quad == "GTY_Quad_229" || $select_quad == "GTY_Quad_232" || $select_quad == "GTY_Quad_233"))
          || ($device == "XCVU31P" && $pkg == "FSVH1924" && ($select_quad == "GTY_Quad_126" || $select_quad == "GTY_Quad_125" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225"))
          || (($device == "XCVU35P"||$device == "XCVU45P")  && ($pkg == "FSVH2892" || $pkg == "FSVH2104") && ($select_quad == "GTY_Quad_126" || $select_quad == "GTY_Quad_125" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_228" || $select_quad == "GTY_Quad_229"))
          || ($device == "XCVU33P" && ($pkg == "FSVH2104") && ($select_quad == "GTY_Quad_126" || $select_quad == "GTY_Quad_125" || $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225" ))
          || ($device == "XCVU29P" && ($pkg == "FIGD2104" || $pkg == "FSGA2577") && ($select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225"))
          || (($device == "XQZU28DR") && ($pkg == "FFRG1517") && ($select_quad == "GTY_Quad_130" || $select_quad == "GTY_Quad_129")) || ( ($device == "XCVU19P" && $pkg == "FSVA3824" )  && ($select_quad == "GTY_Quad_237" || $select_quad == "GTY_Quad_236" || $select_quad == "GTY_Quad_232" || $select_quad == "GTY_Quad_231" || $select_quad == "GTY_Quad_227" || $select_quad == "GTY_Quad_226"   || $select_quad == "GTY_Quad_222" || $select_quad == "GTY_Quad_221" ))
          || (($device == "XCVU19P" && $pkg == "FSVB3824" )  && ($select_quad == "GTY_Quad_237" || $select_quad == "GTY_Quad_236" || $select_quad == "GTY_Quad_233" || $select_quad == "GTY_Quad_232" || $select_quad == "GTY_Quad_231" || $select_quad == "GTY_Quad_227" || $select_quad == "GTY_Quad_226"   || $select_quad == "GTY_Quad_222" || $select_quad == "GTY_Quad_221" ))
          || (($pkg == "FSVH2104" && $device == "XCU50") && ( $select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225"))
          || (($pkg == "FF999" && $device == "XCVU23P") && ($select_quad == "GTY_Quad_226" || $select_quad == "GTY_Quad_225"))
          || (($pkg == "FF8888" && $device == "XCVU23P") && ($select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_226"))
          || (($pkg == "VSVA1365" && $device == "XCVU23P") && ($select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_226"))

          } {
          set enable_upto_x8 1
          set enable_upto_x4 0
         ## Following GT Quads/devices/packages should allow only X1,X2,X4 range
         } elseif {
           ((( $device == "XCZU49DR"   || $device == "XCZU46DR" )  || ($pkg == "FSVG1517" &&  ($device == "XCZU48DR" ||  $device == "XCZU47DR" ||  $device == "XCZU45DR"  )))  && ($select_quad == "GTY_Quad_128")) || ((( ($pkg == "FSVE1156" || $pkg == "FFVE1156") &&  ($device == "XCZU48DR" ||  $device == "XCZU47DR" ||  $device == "XCZU45DR" )) ) && ($select_quad == "GTY_Quad_128" ))

      ||     ((($device == "XCVU3P" && $pkg == "FFVC1517") || ($device == "XQVU3P" && $pkg == "FFRC1517")) && $select_quad == "GTY_Quad_224") 
      || (($pkg == "FIGD2104" && $device == "XCVU27P") && ($select_quad == "GTY_Quad_224"))
      || (($pkg == "FSGA2577" && $device == "XCVU27P") && ($select_quad == "GTY_Quad_224"))
           || (($device == "XCVU5P" || $device == "XCVU7P" || $device == "XCVU7P_C"|| $device == "XQVU7P") && ($pkg == "FLVA2104" || $pkg == "FLRA2104") && ($select_quad == "GTY_Quad_125" || $select_quad == "GTY_Quad_130" || $select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_231"))
	   || (($device == "XCVU5P" || $device == "XCVU7P"|| $device == "XCVU7P_C" || $device == "XQVU7P") && ($pkg == "FLVB2104" || $pkg == "FLRB2104") && ($select_quad == "GTY_Quad_125" || $select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_229"))
           || (($device == "XCVU5P" || $device == "XCVU7P"|| $device == "XCVU7P_C") && $pkg == "FLVC2104" && ($select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_229"))
           || ($device == "XCVU9P" && $pkg == "FLGA2104" && ($select_quad == "GTY_Quad_125" || $select_quad == "GTY_Quad_120" || $select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_231"))
           || ($device == "XQVU9P" && $pkg == "FLQA2104" && ($select_quad == "GTY_Quad_125" || $select_quad == "GTY_Quad_120" || $select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_231"))
           || ($device == "XCVU9P" && $pkg == "FLGB2104" && ($select_quad == "GTY_Quad_120" || ($select_quad == "GTY_Quad_224"  && $vu9p_board == "false") || $select_quad == "GTY_Quad_229"))
           || ($device == "XQVU9P" && $pkg == "FLQB2104" && ($select_quad == "GTY_Quad_120" || ($select_quad == "GTY_Quad_224"  && $vu9p_board == "false") || $select_quad == "GTY_Quad_229"))
           || ($device == "XCVU9P" && $pkg == "FLGC2104" && ($select_quad == "GTY_Quad_120" || $select_quad == "GTY_Quad_220" || $select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_229")) 
           || ($device == "XCVU9P" && $pkg == "FLGA2577" && ($select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_229" || $select_quad == "GTY_Quad_219"))
           || ($device == "XCVU9P" && $pkg == "FSGD2104" && ($select_quad == "GTY_Quad_120" || $select_quad == "GTY_Quad_124" || $select_quad == "GTY_Quad_131" || $select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_229"))
           || ($device == "XQVU9P" && $pkg == "FSQD2104" && ($select_quad == "GTY_Quad_120" || $select_quad == "GTY_Quad_124" || $select_quad == "GTY_Quad_131" || $select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_229"))
      || ($device == "XCU200" && $pkg == "FSGD2104" && ($select_quad == "GTY_Quad_124" || $select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_230"))
      || ($device == "XCU250" && $pkg == "FIGD2104" && ($select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_230"))
              || (($pkg == "FSVH2892" && $device == "XCU280") && $select_quad == "GTY_Quad_224")
           || ($device == "XCVU11P"  && ($select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_228" || $select_quad == "GTY_Quad_232"))
           || ($device == "XCVU11P" && $pkg == "FSGD2104" && ($select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_228" || $select_quad == "GTY_Quad_232"))
           || ($device == "XCVU13P" && $pkg == "FHGA2104" && ($select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_229"))
           || ($device == "XQVU13P" && $pkg == "FHQA2104" && ($select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_229"))
           || ($device == "XCVU13P" && ($pkg == "FHGB2104" || $pkg == "FIGD2104") && ($select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_228" || $select_quad == "GTY_Quad_232"))
           || ($device == "XQVU13P" && ($pkg == "FHQB2104" || $pkg == "FIQD2104") && ($select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_228" || $select_quad == "GTY_Quad_232"))
           || ($device == "XCVU13P" && $pkg == "FHGC2104" && ($select_quad == "GTY_Quad_221" || $select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_228" || $select_quad == "GTY_Quad_232"))
           || ($device == "XCVU13P" && ($pkg == "FLGA2577" || $pkg == "FSGA2577") && ($select_quad == "GTY_Quad_220" || $select_quad == "GTY_Quad_224" || $select_quad == "GTY_Quad_228" || $select_quad == "GTY_Quad_232"))
           || ($device == "XCKU11P" && $pkg == "FFVE1517" && ($select_quad == "GTY_Quad_127" || $select_quad == "GTH_Quad_224"))
           || (($device == "XCKU11P"  || $device == "XCKU15P") && $pkg == "FFVA1156" && ($select_quad == "GTY_Quad_129" || $select_quad == "GTH_Quad_224"))
           || (($device == "XQKU15P") && $pkg == "FFRA1156" && ($select_quad == "GTY_Quad_129" || $select_quad == "GTH_Quad_224"))	   
           || ($device == "XCKU11P" && $pkg == "FFVD900" && $select_quad == "GTH_Quad_224")
           || ($device == "XCKU15P" && ($pkg == "FFVE1517" || $pkg == "FFVA1760" || $pkg == "FFVE1760") && ($select_quad == "GTY_Quad_127" || $select_quad == "GTH_Quad_224"))
           || ($device == "XQKU15P" && ($pkg == "FFRE1517" ) && ($select_quad == "GTY_Quad_127" || $select_quad == "GTH_Quad_224"))	   
           || (($device == "XCKU3P" || $device == "XCKU5P") && ($pkg == "FFVA676" || $pkg == "FFVB676" || $pkg == "FFVD900" || $pkg == "SFVB784") && $select_quad == "GTY_Quad_224")
           || (($device == "XCZU11EG" || $device == "XCZU17EG" || $device == "XCZU19EG" || $device == "XQZU19EG" || $device == "XCU25") && ($pkg == "FFVC1760" || $pkg == "FFRC1760") && ($select_quad == "GTY_Quad_128" || $select_quad == "GTH_Quad_224"))
           || (($device == "XQZU11EG" ) && ($pkg == "FFRC1760") && ($select_quad == "GTY_Quad_128" || $select_quad == "GTH_Quad_224"))
           || (($device == "XCZU17EG" || $device == "XCZU19EG") && $pkg == "FFVE1924" && $select_quad == "GTH_Quad_224") 
           || (($device == "XCZU19EG" || $device == "XCZU17EG" || $device == "XCZU11EG" || $device == "XQZU19EG") && ($pkg == "FFVB1517" || $pkg == "FFRB1517") && $select_quad == "GTH_Quad_224")
           || ($device == "XCZU11EG" && ($pkg == "FFVC1156" || $pkg == "FFVF1517") && $select_quad == "GTH_Quad_224")
           || ($device == "XQZU11EG" && ($pkg == "FFRC1156" ) && $select_quad == "GTH_Quad_224")	   
           || (($device == "XCZU19EG" || $device == "XCZU17EG") && $pkg == "FFVD1760" && ($select_quad == "GTY_Quad_128" || $select_quad == "GTH_Quad_224"))
           || (($device == "XCZU4EV" || $device == "XCZU5EV" || $device == "XQZU5EV") && ($pkg == "FBVB900" || $pkg == "FFRB900") && $select_quad == "GTH_Quad_223")
           || (($device == "XCZU4CG" || $device == "XCZU4EG" || $device == "XCZU5CG" || $device == "XCZU5EG") && $pkg == "FBVB900" && $select_quad == "GTH_Quad_223")
           || (($device == "XCZU7EV" || $device == "XQZU7EV" || $device == "XCU30") && ($pkg == "FBVB900" || $pkg == "FFRB900") && $select_quad == "GTH_Quad_224")
           || (($device == "XCZU7CG" || $device == "XCZU7EG")  && $pkg == "FBVB900" && $select_quad == "GTH_Quad_224")
           || (($device == "XCZU4EV" || $device == "XCZU5EV" || $device == "XQZU5EV") && ($pkg == "SFVC784" || $pkg == "SFRC784") && $select_quad == "GTH_Quad_224")
           || (($device == "XAZU4EV" || $device == "XAZU5EV") && $pkg == "SFVC784" && $select_quad == "GTH_Quad_224")
           || (($device == "XCZU4CG" || $device == "XCZU4EG" || $device == "XCZU5CG" || $device == "XCZU5EG") && $pkg == "SFVC784" && $select_quad == "GTH_Quad_224")
           || (($device == "XCZU7EV" || $device == "XQZU7EV") && ($pkg == "FFVC1156" || $pkg == "FFVF1517" || $pkg == "FFRC1156") && $select_quad == "GTH_Quad_223")
           || (($device == "XCZU7CG" || $device == "XCZU7EG") && ($pkg == "FFVC1156" || $pkg == "FFVF1517") && $select_quad == "GTH_Quad_223")
           || (((($device == "XCZU21DR" || $device == "XQZU21DR") && ($pkg == "FFVD1156" || $pkg == "FFRD1156")) || (($device == "XCZU29DR" || $device == "XCZU39DR") && ($pkg == "FFVF1760" || $pkg == "FSVF1760")) ||($pkg == "FFRF1760" && $device == "XQZU29DR")|| ($device == "XCZU27DR" && ($pkg == "FFVG1517" || $pkg == "FSVG1517")) || ($device == "XCZU28DR" && ($pkg == "FFVG1517" || $pkg == "FSVG1517"))) && ($select_quad == "GTY_Quad_128")) 
           || ((($device == "XCZU27DR" && ($pkg == "FFVE1156" || $pkg == "FSVE1156")) || (($device == "XCZU28DR" || $device == "XQZU28DR") && ($pkg == "FFVE1156" || $pkg == "FSVE1156" || $pkg == "FFRE1156")) || ($device == "XCZU25DR" && ($pkg == "FSVE1156" || $pkg == "FSVG1517" || $pkg == "FFVE1156" || $pkg == "FFVG1517"))) && ($select_quad == "GTY_Quad_128"))	   
	   || (($device == "XCVU37P" ||$device == "XCVU47P" || $device == "XQVU37P" )  && ($pkg == "FSVH2892" || $pkg == "FSQH2892") && ($select_quad == "GTY_Quad_124" || $select_quad == "GTY_Quad_224" || ($pcie_blk == "PCIE4_X0Y0" && $select_quad == "GTY_Quad_227") || ($pcie_blk == "PCIE4_X0Y1" && $select_quad == "GTY_Quad_231"))) 
           || ($device == "XCVU31P" && $pkg == "FSVH1924" && ($select_quad == "GTY_Quad_124" || $select_quad == "GTY_Quad_224")) 
           || (($device == "XCVU35P" ||$device == "XCVU45P")   && ($pkg == "FSVH2892" || $pkg == "FSVH2104") && ($select_quad == "GTY_Quad_124" || $select_quad == "GTY_Quad_224" || ($pcie_blk == "PCIE4_X0Y0" && $select_quad == "GTY_Quad_227"))) 
           || ($device == "XCVU33P" && ($pkg == "FSVH2104") && ($select_quad == "GTY_Quad_124" || $select_quad == "GTY_Quad_224")) 
           || ($device == "XCVU29P" && ($pkg == "FIGD2104" || $pkg == "FSGA2577") && ($select_quad == "GTY_Quad_224")) 
           || (($device == "XQZU28DR") && ($pkg == "FFRG1517") && ($select_quad == "GTY_Quad_128"))
           || (($device == "XCVU19P" && $pkg == "FSVA3824" )  && ($select_quad == "GTY_Quad_235" || $select_quad == "GTY_Quad_230" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_220" ))
           || (($device == "XCVU19P" && $pkg == "FSVB3824" )  && ($select_quad == "GTY_Quad_235" || $select_quad == "GTY_Quad_230" || $select_quad == "GTY_Quad_225" || $select_quad == "GTY_Quad_220" || $select_quad == "GTY_Quad_219" ))
           || (($device == "XCU50") && ($select_quad == "GTY_Quad_131" || $select_quad == "GTY_Quad_224"))
           || (($pkg == "FF999" && $device == "XCVU23P") && $select_quad == "GTY_Quad_224")
           || ((($pkg == "FF8888" || $pkg == "VSVA1365" ) && $device == "XCVU23P") && $select_quad == "GTY_Quad_224")
      

           } {
           set enable_upto_x4 1
           set enable_upto_x8 0
         } else {
           set enable_upto_x8 0
           set enable_upto_x4 0
         }

         if {$enable_upto_x4 == 1} {
            lappend WIDTH_RANGE "X1,X2,X4"
         } elseif {$enable_upto_x8 == 1} {
            lappend WIDTH_RANGE "X1,X2,X4,X8"
         } else {
            lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
         }
      } else {
        if {($pkg == "SFVC784" || $pkg == "SFRC784") && ($device == "XAZU4EV" || $device == "XAZU5EV" || $device == "XCZU4EV" || $device == "XCZU5EV" || $device == "XQZU5EV" || $device == "XCZU4CG" || $device == "XCZU4EG" || $device == "XCZU5CG" || $device == "XCZU5EG")} {
           lappend WIDTH_RANGE "X1,X2,X4" 
        } else {
          if {($pkg == "FFVC1760" || $pkg == "FFRC1760") && ($device == "XCZU17EG" || $device == "XCZU19EG" || $device == "XCZU11EG" || $device == "XQZU19EG" || $device == "XCU25")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
     } elseif {( $pkg == "FFRC1760") && $device == "XQZU11EG"} {
          lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 	    
          } elseif { ($device == "XCZU49DR"  || $device == "XCZU46DR") || (($pkg == "FSVG1517" || $pkg == "FFVG1517")  &&  ($device == "XCZU48DR" ||  $device == "XCZU47DR" ||  $device == "XCZU45DR" ))} {
           lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 	
          } elseif {$pkg == "FFVE1924" && ($device == "XCZU17EG" || $device == "XCZU19EG")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {(($pkg == "FSVE1156" || $pkg == "FFVE1156")  &&  ($device == "XCZU48DR" ||  $device == "XCZU47DR" ||  $device == "XCZU45DR" ) )  } {
          lappend WIDTH_RANGE "X1,X2,X4,X8" 	 
          } elseif {($pkg == "FBVB900" || $pkg == "FFRB900") && ($device == "XCZU4EV" || $device == "XCZU5EV" || $device == "XQZU5EV" || $device == "XCZU7EV" || $device == "XQZU7EV" || $device == "XCZU4CG" || $device == "XCZU4EG" || $device == "XCZU5CG" || $device == "XCZU5EG" || $device == "XCZU7CG" || $device == "XCZU7EG" || $device == "XCU30")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {($pkg == "SFVC784" || $pkg == "SFRC784") && ($device == "XAZU4EV" || $device == "XAZU5EV" || $device == "XCZU4EV" || $device == "XCZU5EV" || $device == "XQZU5EV" || $device == "XCZU4CG" || $device == "XCZU4EG" || $device == "XCZU5CG" || $device == "XCZU5EG")} {
             lappend WIDTH_RANGE "X1,X2,X4" 
          } elseif {($pkg == "FFVC1156" || $pkg == "FFRC1156") && ($device == "XCZU7EV" || $device == "XCZU11EG" || $device == "XQZU7EV")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {$pkg == "FFVC1156" && ($device == "XCZU7CG" || $device == "XCZU7EG")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {$pkg == "FFVF1517" && ($device == "XCZU7EV" || $device == "XCZU11EG")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {$pkg == "FFVF1517" && $device == "XCZU11EG"} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {$pkg == "FFVF1517" && ($device == "XCZU7CG" || $device == "XCZU7EG")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {($pkg == "FFVB1517" || $pkg == "FFRC1517") && ($device == "XCZU11EG" || $device == "XCZU17EG" || $device == "XCZU19EG" || $device == "XQZU19EG")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {$pkg == "FFVD1760" && ($device == "XCZU17EG" || $device == "XCZU19EG")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {($pkg == "FSVE1156" || $pkg == "FSVG1517") && $device == "XCZU25DR"} {
             lappend WIDTH_RANGE "X1,X2,X4,X8" 
          } elseif {($pkg == "FSVE1156" && $device == "XCZU27DR")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8" 
          } elseif {($pkg == "FSVG1517" && $device == "XCZU27DR")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {($pkg == "FSVE1156") && $device == "XCZU28DR"} {
             lappend WIDTH_RANGE "X1,X2,X4,X8" 
          } elseif {($pkg == "FSVG1517") && $device == "XCZU28DR"} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {($pkg == "FFRG1517") && $device == "XQZU28DR"} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {($pkg == "FSVF1760" && ($device == "XCZU29DR" || $device == "XCZU39DR")) ||($pkg == "FFRF1760" && $device == "XQZU29DR") } {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 	    
          } elseif {($pkg == "FFVE1517" && ($device == "XCKU11P" || $device == "XCKU15P")) || ($pkg == "FFRE1517" && $device == "XQKU15P")} {	  
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {$pkg == "FFVA676" && ($device == "XCKU3P" || $device == "XCKU5P")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {$pkg == "FFVB676" && ($device == "XCKU3P" || $device == "XCKU5P")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {$pkg == "FFVD900" && ($device == "XCKU3P" || $device == "XCKU5P" || $device == "XCKU11P")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {$pkg == "SFVB784" && ($device == "XCKU3P" || $device == "XCKU5P")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {($pkg == "FFVA1156" && ($device == "XCKU11P" || $device == "XCKU15P")) || ($pkg == "FFRA1156" && $device == "XQKU15P") } {	  
            if {$pcie_blk == "X0Y2" || $pcie_blk == "X0Y3"} {
               lappend WIDTH_RANGE "X1,X2,X4,X8" 
            } else {
               lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
            }
          } elseif {($pkg == "FFVA1760" || $pkg == "FFVE1760") && $device == "XCKU15P"} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif { $device == "XCVU19P" } {
             lappend WIDTH_RANGE "X1,X2,X4,X8" 	 
          } elseif {( $device == "XCU50" && ($pcie_blk == "PCIE4C_X1Y0" || $pcie_blk == "PCIE4C_X1Y1" ))} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          }  elseif {( $device == "XCU50" && ($pcie_blk == "PCIE4C_X0Y1"  || $pcie_blk == "PCIE4C_X0Y0" ))} {
             lappend WIDTH_RANGE "X1,X2,X4" 
          } elseif {$pkg == "FFVC1517" && $device == "XCVU3P"} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {$pkg == "FFRC1517" && $device == "XQVU3P"} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {$pkg == "FLVA2104" && $device == "XCVU5P"} {
            if {$pcie_blk == "X0Y1" || $pcie_blk == "X0Y3" || $pcie_blk == "X1Y2"} {
               lappend WIDTH_RANGE "X1,X2,X4,X8" 
            } elseif {$pcie_blk == "X1Y0"} {
               lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
            }
          } elseif {($pkg == "FLVA2104" || $pkg == "FLRA2104") && ($device == "XCVU7P" || $device == "XQVU7P"|| $device == "XCVU7P_C")} {
            if {$pcie_blk == "X0Y1" || $pcie_blk == "X0Y3" || $pcie_blk == "X1Y2"} {
               lappend WIDTH_RANGE "X1,X2,X4,X8" 
            } elseif {$pcie_blk == "X1Y0"} {
               lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
            }
          } elseif {($pkg == "FLGA2104" || $pkg == "FLQA2104")&& ($device == "XCVU9P" || $device == "XQVU9P" )} {
            if {$pcie_blk == "X0Y1" || $pcie_blk == "X0Y3" || $pcie_blk == "X1Y4"} {
               lappend WIDTH_RANGE "X1,X2,X4,X8" 
            } elseif {$pcie_blk == "X1Y2"} {
               lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
            }
          } elseif {($pkg == "FSGD2104" || $pkg == "FSQD2104" ) && ($device == "XCVU9P" || $device == "XQVU9P" )} {
            if {$pcie_blk == "X0Y5"} { 
               lappend WIDTH_RANGE "X1,X2,X4" 
            } else { 
               lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
            }
     } elseif {$pkg == "FSGD2104" && $device == "XCU200"} {
       if {$pcie_blk == "X1Y4"} {
          lappend WIDTH_RANGE "X1,X2,X4,X8" 
       } else { 
          lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
       }
     } elseif {$pkg == "FIGD2104" && $device == "XCU250"} {
       if {$pcie_blk == "X0Y2"} {
          lappend WIDTH_RANGE "X1,X2,X4,X8" 
       } else { 
          lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
       }
     } elseif {($pkg == "FSVH2892" && $device == "XCU280")} {
          lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
     } elseif {$pkg == "FIGD2104" && $device == "XCVU27P"} {
          lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
     } elseif {$pkg == "FSGA2577" && $device == "XCVU27P"} {
          lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {($pkg == "FLVB2104" || $pkg == "FLRB2104") && ($device == "XCVU5P" || $device == "XCVU7P" || $device == "XQVU7P" || $device == "XCVU7P_C")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {($pkg == "FLGB2104" || $pkg == "FLQB2104" )&& ($device == "XCVU9P" || $device == "XQVU9P" )} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {$pkg == "FLVC2104" && ($device == "XCVU5P" || $device == "XCVU7P"|| $device == "XCVU7P_C")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {$pkg == "FLGC2104" && $device == "XCVU9P"} {
            if {$pcie_blk == "X0Y1" || $pcie_blk == "X1Y0"} {
               lappend WIDTH_RANGE "X1,X2,X4,X8" 
            } elseif {$pcie_blk == "X0Y3" || $pcie_blk == "X0Y5" || $pcie_blk == "X1Y2" || $pcie_blk == "X1Y4"} {
               lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
            }
          } elseif {$pkg == "FLGA2577" && ($device == "XCVU9P" || $device == "XCVU11P")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {($pkg == "FLGC2104" || $pkg == "FLRC2104") && ($device == "XCVU11P" || $device == "XQVU11P")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {($pkg == "FLGB2104" || $pkg == "FLGF1924" || $pkg == "FSGD2104") && $device == "XCVU11P"} {
            if {$pcie_blk == "X0Y2"} {
               lappend WIDTH_RANGE "X1,X2,X4,X8" 
            } else {
               lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
            }
          } elseif {($pkg == "FHGA2104" && $device == "XCVU13P")||($pkg == "FHQA2104" && $device == "XQVU13P")} {
            if {$pcie_blk == "X0Y2"} {
               lappend WIDTH_RANGE "X1,X2,X4,X8" 
            } else {
               lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
            }
          } elseif {($pkg == "FHGB2104" || $pkg == "FIGD2104" || $pkg == "FHQB2104" || $pkg == "FIQD2104") && ($device == "XCVU13P" || $device == "XQVU13P")} {
            if {$pcie_blk == "X0Y3"} {
               lappend WIDTH_RANGE "X1,X2,X4,X8" 
            } else {
               lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
            }
          } elseif {$pkg == "FHGC2104" && $device == "XCVU13P"} {
            if {$pcie_blk == "X0Y0" || $pcie_blk == "X0Y3"} {
               lappend WIDTH_RANGE "X1,X2,X4,X8" 
            } else {
               lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
            }
          } elseif {($pkg == "FLGA2577" || $pkg == "FSGA2577") && $device == "XCVU13P"} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {($pkg == "FFVE1156" || $pkg == "FFRE1156") && ($device == "XCZU28DR" || $device == "XQZU28DR" || $device == "XCZU25DR" || $device == "XCZU27DR")} {
             lappend WIDTH_RANGE "X1,X2,X4,X8" 
          } elseif {$pkg == "FFVG1517" && $device == "XCZU25DR"} {
             lappend WIDTH_RANGE "X1,X2,X4,X8" 
          } elseif {(($pkg == "FFVD1156" || $pkg == "FFRD1156") && ($device == "XCZU21DR" || $device == "XQZU21DR")) || ($pkg == "FFVF1760" && ( $device == "XCZU29DR" || $device == "XCZU39DR")) ||($pkg == "FFRF1760" && $device == "XQZU29DR") || ($pkg == "FFVG1517" && ($device == "XCZU27DR" || $device == "XCZU28DR"))} {	  
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {(($pkg == "FSVH1924" && $device == "XCVU31P") || (($pkg == "FSVH2892" || $pkg == "FSQH2892") && ($device == "XCVU37P" || $device == "XCVU47P" || $device == "XQVU37P" )) || ($pkg == "FSVH2892"  && ($device == "XCVU35P"||$device == "XCVU45P")) || ($pkg == "FSVH2104" && ($device == "XCVU35P"|| $device == "XCVU45P")) || ($pkg == "FSVH2104" && $device == "XCVU33P"))} {
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } elseif {($pkg == "FIGD2104" || $pkg == "FSGA2577") && $device == "XCVU29P"} { 
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          } else { 
             lappend WIDTH_RANGE "X1,X2,X4,X8,X16" 
          }
        }
      }
    } elseif {$fmly eq "VIRTEXU" || $fmly eq "KINTEXU"} {
      if {$en_gt_selection == "false"} {
        if {(($pkg == "FFVA1156" || $pkg == "RFA1156") && $pcie_blk == "X0Y2" && ($device == "XCKU040" || $device == "XQKU040" || $device == "XCKU060" || $device == "XQKU060" || $device == "XQRKU060" ||  $device == "XCKU095" || $device == "XQKU095")) || ($pkg == "FFVA1517" && $device == "XCKU060" && $pcie_blk == "X0Y2") || ($pkg == "FLVA1517" &&  $pcie_blk == "X0Y2" && ($device == "XCKU085" || $device == "XCKU115")) || ($pkg == "FLVA2104" && ($pcie_blk == "X0Y3" || $pcie_blk == "X0Y4" || $pcie_blk == "X0Y5") && $device == "XCKU115") || ($pkg == "FLVB1760" && ($pcie_blk == "X0Y2" || $pcie_blk == "X0Y5" || $pcie_blk == "X0Y4") && ($device == "XCKU085" || $device == "XCKU115")) || ($pkg == "FLVD1924" && ($pcie_blk == "X0Y3" || $pcie_blk == "X0Y5" || $pcie_blk == "X0Y4") && $device == "XCKU115") || (($pkg == "FLVF1924" || $pkg == "FLVD1517" || $pkg == "FLVB2104" || $pkg == "RLF1924" || $pkg == "RLD1517") && ($pcie_blk == "X0Y2" || $pcie_blk == "X0Y5") && ($device == "XCKU085" || $device == "XCKU115" || $device == "XQKU115")) || (($pkg == "FFVD1924" || $pkg == "FFVA2104") && $pcie_blk == "X0Y3" && ($device == "XCVU080" || $device == "XCVU095")) || ($pkg == "FLVA2104" && $pcie_blk == "X0Y3" && $device == "XCVU125") || ($pkg == "FLGB2377" && ($pcie_blk == "X0Y1" || $pcie_blk == "X0Y3" || $pcie_blk == "X0Y5") && $device == "XCVU440") || (($device == "XCKU095" || $device == "XCVU080" || $device == "XCVU095") && $pkg == "FFVC1517" && $pcie_blk == "X0Y2") || ($pkg == "FLGC2104" && $pcie_blk == "X0Y1" && $device == "XCVU190")} {
           lappend WIDTH_RANGE "X1,X2,X4" 
        } else {
           lappend WIDTH_RANGE "X1,X2,X4,X8" 
        }
      } else {
        if {($select_quad == "GTH_Quad_219") || ($select_quad == "GTH_Quad_224") || (($device == "XCKU085" || $device == "XCKU115" || $device == "XQKU115") && ($pkg == "FLVA1517" || $pkg == "FLVF1924" || $pkg == "FLVD1517" || $pkg == "RLF1924" || $pkg == "RLD1517" || $pkg == "FLVB2104") && ($select_quad == "GTH_Quad_229")) || (($device == "XCKU085" || $device == "XCKU115") && ($pkg == "FLVB1760") && ($select_quad == "GTH_Quad_230")) || ($device == "XCKU115" && $pkg == "FLVD1924" && $select_quad == "GTH_Quad_231") || ($device == "XCKU115" && ($pkg == "FLVA2104") && ($select_quad == "GTH_Quad_231")) || ($select_quad == "GTH_Quad_221") || ($select_quad == "GTH_Quad_220" && $pkg == "FLGC2104") || ($select_quad == "GTH_Quad_219" && ($pkg == "FLGA2577" || $pkg == "FLGA2892")) || ($device == "XCVU125" && $pkg == "FLVB1760" && $pcie_blk == "X0Y2" && $select_quad == "GTH_Quad_230") || ($device == "XCVU125" && ($pkg == "FLVB2104" || $pkg == "FLVC2104" || $pkg == "FLVD1517") && $pcie_blk == "X0Y2" && $select_quad == "GTH_Quad_229") || ($select_quad == "GTH_Quad_229" && (($pcie_blk == "X0Y4" && $device == "XCVU190" && ($pkg == "FLGA2577" || $pkg == "FLGB2104" || $pkg == "FLGC2104")) || ($pcie_blk == "X0Y3" && $device == "XCVU160" && ($pkg == "FLGB2104" || $pkg == "FLGC2104")) || ($pcie_blk == "X0Y4" && $device == "XCVU440" && $pkg == "FLGA2892"))) || ($device == "XCVU440" && $pkg == "FLGB2377" && $pcie_blk == "X0Y4" && $select_quad == "GTH_Quad_231") || ($device == "XCVU125" && $pkg == "FLVA2104" && $pcie_blk == "X0Y2" && $select_quad == "GTH_Quad_231") || (($device == "XCKU095" || $device == "XQKU095") && ($pkg == "FFVA1156" || $pkg == "RFA1156") && $pcie_blk == "X0Y2" && $select_quad == "GTH_Quad_228")} {
           lappend WIDTH_RANGE "X1,X2,X4" 
        } else {
           lappend WIDTH_RANGE "X1,X2,X4,X8" 
        }
      }
    } elseif {(((($pkg == "FBG484") || ($pkg == "FBV484") || ($pkg == "SBG324")) && ($fmly == "KINTEX7")) || ($fmly == "ARTIX7" || $device == "XC7Z030" || $device == "XC7Z030I" || $device == "XQ7Z030" || $device == "XA7Z030" || $device == "XC7Z015" || $device == "XC7Z015I"))} {
      if {($fmly == "ARTIX7") && (($pkg == "CPG236") || (($device == "XC7A12T" || $device == "XC7A12TI") && ($pkg == "CSG325")))} { 
         lappend WIDTH_RANGE "X1,X2" 
      } else { 
         lappend WIDTH_RANGE "X1,X2,X4" 
      }
    } else { 
       lappend WIDTH_RANGE "X1,X2,X4,X8" 
    }
    return $WIDTH_RANGE
}
