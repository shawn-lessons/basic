test :	Calculator.class CalculatorTests.class
	java -cp ./lib/junit-platform-console-standalone-1.9.0.jar:./target:. -jar ./lib/junit-platform-console-standalone-1.9.0.jar --class-path target --scan-class-path
Calculator.class :
	javac -sourcepath src/ src/main/app/Calculator.java -d target
CalculatorTests.class:	Calculator.class
	javac -cp ./lib/junit-platform-console-standalone-1.9.0.jar:./target:. -sourcepath src/ src/test/app/CalculatorTests.java -d target
clean :
	rm -rf target
	
