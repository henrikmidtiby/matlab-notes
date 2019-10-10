function tests = binary_log_test
    tests = functiontests(localfunctions);
end
 

%% Test 1: Positive integer powers of two
function test1(testCase)
    actual_value = binary_log(1);
    expected_value = 0;
    testCase.verifyEqual(actual_value, expected_value);

    actual_value = binary_log(2);
    expected_value = 1;
    testCase.verifyEqual(actual_value, expected_value);
    
    actual_value = binary_log(4);
    expected_value = 2;
    testCase.verifyEqual(actual_value, expected_value);
end


%% Test 2: Negative integer powers of two
function test2(testCase)
    actual_value = binary_log(1/2);
    expected_value = -1;
    testCase.verifyEqual(actual_value, expected_value);
    
    actual_value = binary_log(1/4);
    expected_value = -2;
    testCase.verifyEqual(actual_value, expected_value);
end


%% Test 3: Non integer powers of two
function test3(testCase)
    actual_value = binary_log(1.2);
    expected_value = log2(1.2);
    testCase.verifyEqual(actual_value, expected_value, 'RelTol', 0.001);

    actual_value = binary_log(1.8);
    expected_value = log2(1.8);
    testCase.verifyEqual(actual_value, expected_value, 'RelTol', 0.001);

    actual_value = binary_log(3.1);
    expected_value = log2(3.1);
    testCase.verifyEqual(actual_value, expected_value, 'RelTol', 0.001);
end
