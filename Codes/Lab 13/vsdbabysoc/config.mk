export DESIGN_NICKNAME = vsdbabysoc
export DESIGN_NAME = vsdbabysoc
export PLATFORM    = sky130hd

export ADDITIONAL_LIBS = $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/lib/avsddac.lib \
				         $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/lib/avsdpll.lib

export VERILOG_FILES = $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/vsdbabysoc.v \
					   $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/rvmyth.v \
					   $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/include/clk_gate.v

export VERILOG_INCLUDE_DIRS = $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/include

export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/vsdbabysoc_synthesis.sdc

export ADDITIONAL_LEFS = $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/lef/avsddac.lef \
 						 $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/lef/avsdpll.lef


export ADDITIONAL_GDS = $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/gds/avsddac.gds \
						$(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/gds/avsdpll.gds

export PDN_TCL = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/pdn.tcl

export DIE_AREA   = 0 0 1600 1600
export CORE_AREA  = 20 20 1590 1590

export PLACE_PINS_ARGS = -exclude left:0-600 -exclude left:1000-1600: -exclude right:* -exclude top:* -exclude bottom:*
export MACRO_PLACEMENT = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/macro.cfg

export TNS_END_PERCENT = 100

export REMOVE_ABC_BUFFERS = 1
