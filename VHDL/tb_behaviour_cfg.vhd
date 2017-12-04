configuration tb_behaviour_cfg of tb is
   for behaviour
      for all: timebase use configuration work.timebase_synthesised_cfg;
      end for;
   end for;
end tb_behaviour_cfg;


