# Tutorial amen jungle loop

sample_name = :loop_amen

with_fx :reverb do
  in_thread(name: :amen) do
    live_loop :foo do
      sample sample_name, rate: 1.25
      #sample :ambi_piano, rate: choose([0.5, 0.75, 1, 1.25])
      sample :ambi_piano, rate: choose([0.5, 0.75, 1, 1.25])
      sleep sample_duration(sample_name, rate: 1.25)
    end
  end
end