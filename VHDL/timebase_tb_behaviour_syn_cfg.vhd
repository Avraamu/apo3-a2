configuration timebase_tb_behaviour_syn_cfg of timebase_tb is
   for behaviour
      for all: timebase use configuration work.timebase_synthesised_cfg;
      end for;
   end for;
end timebase_tb_behaviour_syn_cfg;


