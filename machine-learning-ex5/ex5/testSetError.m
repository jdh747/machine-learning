function [test_error, lambda] = testSetError(lambda_vec, error_val, X, y, xtest, ytest)
    [null,index] = min(error_val);
    lambda = lambda_vec(index);
    theta = trainLinearReg(X, y, lambda);
    test_error = linearRegCostFunction(xtest, ytest, theta, 0);
end