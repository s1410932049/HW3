VERILOG = iverilog
TARGET = voter_case.vcd
TEMP = voter_case.vvp
$(TARGET) : $(TEMP)
	vvp $(TEMP)
voter_case.vvp: voter_case_tb.v voter_case.v
	$(VERILOG) -o $(TEMP) voter_case_tb.v voter_case.v
clean:
	-del $(TARGET)
	-del $(TEMP)
