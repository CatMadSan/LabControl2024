opts = delimitedTextImportOptions("NumVariables", 4);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["Tiempo", "CORRIENTE", "VELOCIDAD", "ENTRADA"];
opts.VariableTypes = ["double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
tbl = readtable("C:\Users\catim\Desktop\LabControl\MotorCD\MotorCD.csv", opts);

% Convert to Output type
Tiempo = tbl.Tiempo;
CORRIENTE = tbl.CORRIENTE;
VELOCIDAD = tbl.VELOCIDAD;
ENTRADA = tbl.ENTRADA;

% Clear temporary variables
clear opts tbl

% Variable display format to non-rounded
format shortg