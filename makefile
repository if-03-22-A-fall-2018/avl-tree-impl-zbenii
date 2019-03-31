CC					= g++
CCLINK			= g++
LIBS				=
CCOPTIONS		= -Wall -pedantic -g
LDOPTIONS		=
HDRS				= avl_tree.h node.h test_avl.h shortcut.h

TEST = test_avl
PROGRAM = avl_prg

TESTOBJECT = avl_test_driver.o
MAINOBJECT = avl_main_driver.o
OBJS = shortcut.o avl_tree.o node.o test_avl.o

#DOXY            = /Applications/Doxygen/Doxygen.app/Contents/Resources/doxygen
DOXY            = doxygen

all: $(PROGRAM)
	./$(PROGRAM)

$(TEST): $(OBJS) $(TESTOBJECT)
	$(CCLINK) -o $@ $(LDOPTIONS) $(OBJS) $(TESTOBJECT)

$(PROGRAM): $(OBJS) $(MAINOBJECT)
	$(CCLINK) -o $@ $(LDOPTIONS) $(OBJS) $(MAINOBJECT)

.PHONY: clean cleanall doxy test setsample setassignment definesample defineassignment assignmentfolder

clean:
	rm -f $(PROGRAM) $(TEST) $(TESTOBJECT) $(MAINOBJECT) $(OBJS)

cleanall:
	rm -f $(PROGRAM) $(TEST) $(TESTOBJECT) $(MAINOBJECT) $(OBJS) index.html
	rm -R html

doxy:
	$(DOXY)
	ln -s html/index.html index.html

test: $(TEST)
	./$(TEST)

#sets project as sample solution
setsample:
	cp avl_tree.cpp.sample avl_tree.cpp
	cp avl_tree.h.sample avl_tree.h
	cp node.cpp.sample node.cpp
	cp node.h.sample node.h

#sets project as assignment
setassignment:
	cp avl_tree.cpp.assignment avl_tree.cpp
	cp avl_tree.h.assignment avl_tree.h
	cp node.cpp.assignment node.cpp
	cp node.h.assignment node.h

# defines current state of project as sample solution
definesample:
	cp avl_tree.cpp avl_tree.cpp.sample
	cp avl_tree.h avl_tree.h.sample
	cp node.cpp node.cpp.sample
	cp node.h node.h.sample

# defines current state of project as assignment
defineassignment:
	cp avl_tree.cpp avl_tree.cpp.assignment
	cp avl_tree.h avl_tree.h.assignment
	cp node.cpp node.cpp.assignment
	cp node.h node.h.assignment

# creates a folder which can serve as a publishable assignment
assignmentfolder:
	make setsample
	make doxy
	make setassignment
	mkdir ../assignment
	cp -R * ../assignment
	rm ../assignment/*.sample
	rm ../assignment/*.assignment
	make cleanall

%.o: %.cpp $(HDRS)
	$(CC) $(CCOPTIONS) -c $<
