configuration tb_behaviour_syn_cfg of tb is
   for behaviour
      for all: timebase use configuration work.timebase_synthesised_cfg;
      end for;
      for all: bulletspd_fsm use configuration work.bulletspd_fsm_synthesised_cfg;
      end for;
      for all: lanespd_fsm use configuration work.lanespd_fsm_synthesised_cfg;
      end for;
   end for;
end tb_behaviour_syn_cfg;


