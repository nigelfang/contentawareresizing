function contentAwareResize = generate_results(filename, reduceAmt, reduceWhat)
 contentAwareResize = imread(filename);
 if strcmp(reduceWhat, 'WIDTH')
    for i = 1:reduceAmt
        contentAwareResize = reduceWidth(contentAwareResize); % Display flag is set to false by default
    end
 elseif strcmp(reduceWhat, 'HEIGHT')
    for i = 1:reduceAmt
        contentAwareResize = reduceHeight(contentAwareResize); % Display flag is set to false by default
    end
 end
end