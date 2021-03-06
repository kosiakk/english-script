#
# S E E    JVM emitter <<<<<<<<<<<<<<<
# ^^^^^^^^^^^^^^^^^

# https://stackoverflow.com/questions/2261947/are-there-alternatives-to-cglib
# http://openjdk.java.net/projects/graal/
# http://www.drgarbage.com/bytecode-visualizer/
# AST to bytecode toy # git@github.com:jakobehmsen/astava.git

# JAVASSIST for dynamic repl AND bytecode class files!!
ClassPool pool = ClassPool.getDefault();
CtClass cc = pool.get("test.Rectangle");
cc.setSuperclass(pool.get("test.Point"));
CtField f = new CtField(ClassPool.getDefault().get("java.util.ArrayList"), "someList", cc);
CtMethod mthd1 = CtNewMethod.make("public Integer getTestInte() { return testInte; }", classe);

cc.addField(f);
cc.addField(new CtField(CtClass.intType, "z", cc));
cc.writeFile();

# Javassist can be used with a class loader so that bytecode can be modified at load time.
# https://jboss-javassist.github.io/javassist/tutorial/tutorial.html

# RubyMotion PLEASE become open source!!


# VIA JAVA! OK with java 8 http://docs.oracle.com/javase/tutorial/java/javaOO/methodreferences.html
# OK: add classes!! alias java-repl="java -jar /opt/java-repl/javarepl.jar" # pretty bad
# New JDK 7 Feature: Support for Dynamically Typed Languages in the Java VirtualM
# java.sun.com/developer/technicalArticles/DynTypeLang/ -
# WTF One way to take advantage of them is translating lambdas to invokedynamic bytecode instead of wrapping the lambda in an anonymous inner class which is what Java 8 is doing (for some lambdas which cannot be translated with invokestatic which will be a static method)


# VIA JAVA FILES: https://github.com/headius/rubyflux

# VIA JRUBY + extensions SLOOOOOW!!!
# me:~/english-script/xtra$ time ruby test.rb
# 10 times faster startup for ruby: 0m0.030s
# >>>OK<<< AFTER COMPILE: 0.4s load time for java+jruby-1.6 vm
# NOT OK java + jruby-2.1  : 2.424s !!!!!
# 742400 jruby.dll |
# 18240463 jruby.jar NOT OK to bundle
# 25M WTF!? ruby_flux-1.0-SNAPSHOT.jar
# 15477 original-ruby_flux-1.0-SNAPSHOT.jar ???
# [INFO] JRuby ............................................. SUCCESS [0.362s]
# [INFO] JRuby Core ........................................ SUCCESS [12.384s]
# [INFO] JRuby Lib Setup ................................... SUCCESS [7.124s]

# http://jruby.org/apidocs/org/jruby/ast/class-use/Node.html#org.jruby.compiler

# you can instruct the JVM to inline specific methods. -XX:CompileCommand=inline,java.lan.String::indexOf

# You trade dynamicity at the language level for predictability at the VM level.
# JRuby can, with the help of invokedynamic, make method calls *nearly* as fast as Java calls
# and by generating type shapes we can make object state *nearly* as predictable as Java types, but we can't go all the way.

# Arrays.sort(rosterAsArray, (a, b) -> Person.compareByAge(a, b));
# Arrays.sort(rosterAsArray, Person::compareByAge); !!!

# There are four kinds of method references:
#                                    Kind 	Example
# Reference to a static method 	ContainingClass::staticMethodName
# Reference to an instance method of a particular object 	ContainingObject::instanceMethodName
# Reference to an instance method of an arbitrary object of a particular type 	ContainingType::methodName
# Reference to a constructor 	ClassName::new

# Object methodCaller(Object theObject, String methodName) {
#   return theObject.getClass().getMethod(methodName).invoke(theObject);
# Reflection is not the right answer to anything except "How do I write slow dodgy java code" :D
