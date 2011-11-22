<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcephotos extends Datasource{
		
		public $dsParamROOTELEMENT = 'photos';
		public $dsParamORDER = 'asc';
		public $dsParamLIMIT = '1000';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'order';
		public $dsParamSTARTPAGE = '1';
		public $dsParamHTMLENCODE = 'yes';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'yes';
		
		public $dsParamFILTERS = array(
				'28' => '{$category}',
		);
		
		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
				'photo',
				'category',
				'order'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Photos',
					 'author' => array(
							'name' => 'Kirk Strobeck',
							'website' => 'https://github.com/kirkstrobeck/punch',
							'email' => 'kirk@strobeck.com'),
					 'version' => '1.0',
					 'release-date' => '2011-03-16T21:58:48+00:00');	
		}
		
		public function getSource(){
			return '7';
		}
		
		public function allowEditorToParse(){
			return true;
		}
		
		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);
				
			try{
				include(TOOLKIT . '/data-sources/datasource.section.php');
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}			
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}	

			if($this->_force_empty_result) $result = $this->emptyXMLSet();
			return $result;
		}
	}

