#As you keep increasing the sample size the expected value converges to 68.2 as per the law of large numbers

sample_size <- 100000
for(loop in 1:5){
  counter <- 0
  for(i in rnorm(sample_size)){
    if(i <= 1 & i >= -1 ){
      counter <- counter+1
    }
  }
  expected_value <- counter/sample_size
  print(expected_value)
}
