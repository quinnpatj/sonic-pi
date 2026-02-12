# Welcome to Sonic Pi

loop do
  sample :loop_amen, rate: 1.25
  sample :ambi_piano, rate: choose([0.5, 0.75, 1, 1.25])
  sleep sample_duration :loop_amen, rate: 1.25
end