function [My_Output] = My_Input(prompt,d_value,looping,L_0,E_0,G_0,int,lowerlimt,upperlimit)
%Input for a number, highly configruable
%   This is a function, that allows the user to input a number to the
%   spefication of the programer, it will react a certin way if that number
%   is not the one it likes. It can run till it reaches a good number or it
%   can simple termate the program. It can also have a defalut number if the
%   user has not entered a good one.	Coded By Will Platt 11/15 for MATLAB 2015


%These flowing if statments will ensure that a peramiter is set if the user has not spesified one already.
incheck = 0;

if ~exist ('prompt','var')
    prompt = ('Enter a number: ');
end

if ~exist ('d_value','var')
    d_value = 0;
end
My_Output = d_value;

if ~exist ('looping', 'var')
    looping = inf;
end

if ~exist ('L_0','var')
    L_0 = 1;
end

if ~exist ('E_0','var')
    E_0 = 1;
end

if ~exist ('G_0','var')
    G_0 = 1;
end

if ~exist ('int','var')
    int = 0;
end

if ~exist ('lowerlimt', 'var')
    lowerlimt = -(inf);
end

if ~exist ('upperlimit','var')
    upperlimit = (inf);
end




%Now comes the meat of the program a for loop with complex if function that will only break if all the peramiters match those specifed above.

while looping ~= 0
    looping = looping - 1;

My_Output = input (prompt ,'s');
My_Output = str2double(My_Output);
fprintf ('you entered %5.2f\n',My_Output)

    if ischar (My_Output)
    	disp ('You have not inputed a recognizable number.')
		
    elseif (int) * rem(My_Output,1) ~= 0	%interger cheack
        disp ('The number needs to be an interger (whole number)')
		
    elseif   (L_0) + (My_Output >= 0) == 2
        disp ('This input cannot be less then zero.')
			
    elseif (G_0) + (My_Output <= 0) == 2
        disp ('This input cannot be greater then zero.')
			
		
    elseif (E_0) + (My_Output) == 0
        disp ('Zero is not acceptable for this input.')
			
    elseif	My_Output < lowerlimt %min value
        disp ('This number is too small.')
		
    elseif My_Output > upperlimit %max value
        disp ('This number is too big.')
		
    else
		disp ('Input accepted!')
        incheck = 1;
    end
    
         fprintf ('\n\n\nPress any key to contine: ')
        pause
         clc
             if incheck == 1
                looping = 0;
             else
                My_Output = d_value;
             end
end
    if My_Output == d_value
fprintf ('\n\nInput not accepted resorting to default value of %5.2f.',d_value)
    fprintf ('\nPress any key to contine: ')
    pause
    clc
    end
end

