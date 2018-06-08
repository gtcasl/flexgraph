#CXX = clang-5.0
#CXXFLAGS += -std=c++17 -O3 -DNDEBUG -pedantic -Wall -Wextra
CXXFLAGS += -std=c++17 -O0 -g -pedantic -Wall -Wextra -fmax-errors=1
LDFLAGS += -lcash -lstdc++

PROJECT_SRCS = lsu.cpp dcsc_walk.cpp pe.cpp spmv.cpp mtx.cpp graph.cpp cpu.cpp simulator.cpp main.cpp

TEST_SRCS = test_lsu.cpp test_pe.cpp test_vcache.cpp test_spmv.cpp test_wmcache.cpp

PROJECT = spmv.out

TESTS = $(TEST_SRCS:.cpp=.out)

PROJECT_OBJS = $(PROJECT_SRCS:.cpp=.o)

all: $(PROJECT) $(TESTS) 

$(PROJECT) : $(PROJECT_OBJS)
	$(CXX) $^ $(LDFLAGS) -o $@
	
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

%.out: %.o
	$(CXX) $^ $(LDFLAGS) -o $@

.depend: $(PROJECT_SRCS) $(TEST_SRCS)
	$(CXX) $(CXXFLAGS) -MM $^ > .depend;

clean:
	rm -f *.out *.o *.vcd .depend *~ *\#

test: $(TESTS)
	$(foreach test, $(TESTS), ./$(test) || exit;)

run: $(PROJECT)
	./$(PROJECT) -m sample.mtx

ifneq ($(MAKECMDGOALS),clean)
    -include .depend
endif
