<?php 
	/**
	 *  Start develop.
	 */
	Class Address{
		//  Address name.
		public $address_name_1;
		protected $_id_address;
		protected $_id_number;
		protected $_created_time;
		protected $_updated_time;
		private $_public_time;
		protected $_postal_code;
		protected function _postal_code_guess(){
			return 'Look up';
		}
		/**
		 *  Magic __get.
		 * @param string $name
		 * @return  mixed
		 */
		function __get($name){
			if(!$this->_postal_code) {
				$this->_postal_code = $this->_postal_code_guess();
			}
		}
		
	}
	/**
	 *  wha not magic method 
	 * decide for yourself 
	 * ide waring vs contextually resonsive code pre
	 * best pacti
	 * 
	 */