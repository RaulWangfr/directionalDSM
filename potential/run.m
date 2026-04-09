clc;
clear;

fileIndex = 0;
for noise = [0.10, 0.20, 0.40]
    filename = "exam1" + num2str(ceil(fileIndex));
    parameter = "";
    parameter = parameter + " -noise " + num2str(noise);
    parameter = parameter + " -cx 0.3 ";
    parameter = parameter + " -cy 0.0 ";
    parameter = parameter + " -rx 0.1 -ry 0.1 ";
    parameter = parameter + " -thetaNum 5 ";
    parameter = parameter + " -gamma 1.0 ";
    parameter = parameter + " -givenName " + filename + " ";
    system('start "Exam1' + filename + '" freefem++ Example4.edp' + parameter);
    fileIndex = fileIndex + 1;
end

fileIndex = 0;
for thetaNum = [3, 5, 10]
    filename = "exam2" + num2str(ceil(fileIndex));
    parameter = "";
    parameter = parameter + " -noise 0.10 ";
    parameter = parameter + " -cx 0.3 ";
    parameter = parameter + " -cy 0.0 ";
    parameter = parameter + " -rx 0.15 -ry 0.15 ";
    parameter = parameter + " -thetaNum " + num2str(thetaNum);
    parameter = parameter + " -gamma 1.0 ";
    parameter = parameter + " -givenName " + filename + " ";
    system('start "Exam2' + filename + '" freefem++ Example1.edp' + parameter);
    fileIndex = fileIndex + 1;
end

fileIndex = 0;
for cx = [0.1, 0.4, 0.7]
    filename = "exam3" + num2str(ceil(fileIndex));
    parameter = "";
    parameter = parameter + " -noise 0.10 ";
    parameter = parameter + " -cx " + num2str(cx);
    parameter = parameter + " -cy 0.0 ";
    parameter = parameter + " -rx 0.1 -ry 0.1 ";
    parameter = parameter + " -thetaNum 5 ";
    parameter = parameter + " -gamma 1.0 ";
    parameter = parameter + " -givenName " + filename + " ";
    system('start "Exam3' + filename + '" freefem++ Example2.edp' + parameter);
    fileIndex = fileIndex + 1;
end
for cx = [0.1, 0.4, 0.7]
    filename = "exam3" + num2str(ceil(fileIndex));
    parameter = "";
    parameter = parameter + " -noise 0.10 ";
    parameter = parameter + " -cx " + num2str(cx);
    parameter = parameter + " -cy 0.0 ";
    parameter = parameter + " -rx 0.1 -ry 0.1 ";
    parameter = parameter + " -thetaNum 5 ";
    parameter = parameter + " -gamma 0.7 ";
    parameter = parameter + " -givenName " + filename + " ";
    system('start "Exam3' + filename + '" freefem++ Example2.edp' + parameter);
    fileIndex = fileIndex + 1;
end

fileIndex = 0;
for qType = [0, 1, 2]
    filename = "exam4" + num2str(ceil(fileIndex));
    parameter = "";
    parameter = parameter + " -noise 0.10 ";
    parameter = parameter + " -cx 0.3 ";
    parameter = parameter + " -cy 0.0 ";
    parameter = parameter + " -rx 0.15 -ry 0.15 ";
    parameter = parameter + " -thetaNum 5 ";
    parameter = parameter + " -gamma 1.0 ";
    parameter = parameter + " -qType " + num2str(qType);
    parameter = parameter + " -givenName " + filename + " ";
    system('start "Exam4' + filename + '" freefem++ Example3.edp' + parameter);
    fileIndex = fileIndex + 1;
end