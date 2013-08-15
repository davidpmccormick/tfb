<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcetext extends SectionDatasource {

		public $dsParamROOTELEMENT = 'text';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'home: formatted',
				'about: formatted',
				'likes: formatted',
				'work: formatted',
				'contact: formatted',
				'nights-out: formatted',
				'nights-out-link',
				'culinary-projects: formatted',
				'culinary-projects-link',
				'hiking: formatted',
				'hiking-link',
				'juice: formatted',
				'juice-link',
				'dogs: formatted',
				'dogs-link'
		);
		

		public function __construct($env=NULL, $process_params=true) {
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about() {
			return array(
				'name' => 'text',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://localhost:8888/tfb',
					'email' => 'davidpmccormick@gmail.com'),
				'version' => 'Symphony 2.3.3',
				'release-date' => '2013-08-15T09:33:22+00:00'
			);
		}

		public function getSource() {
			return '1';
		}

		public function allowEditorToParse() {
			return true;
		}

		public function execute(array &$param_pool = null) {
			$result = new XMLElement($this->dsParamROOTELEMENT);

			try{
				$result = parent::execute($param_pool);
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage() . ' on ' . $e->getLine() . ' of file ' . $e->getFile()));
				return $result;
			}

			if($this->_force_empty_result) $result = $this->emptyXMLSet();

			return $result;
		}

	}
