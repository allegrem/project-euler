.PHONY: clean
.PRECIOUS: problem-%.out

%: problem-%.out
	./$^

problem-%.out: problem-%.hs
	ghc -dynamic -o $@ $^

clean:
	rm -f *.hi *.o *.out
