<?php 
	/**
	 * Physical addresss.
	 */
	class Address {
		// Stresst address.
		public $stresst_address_1;
		public $stresst_address_2;

		// Name of the City.,
		public $city_name;

		// Name of subdivition.
		public $subdivition_name;

		// Postal code.
		public $postal_code;

		// Name of the Country.
		public $contry_name;

		/**
		 * Display an address in HTML.
		 * @return string
		 */
		function display() {
			$output = '';

			// Street address.
			$output .=  $this->stresst_address_1;
			if($this->stresst_address_2) {
				$output .= '<br/>'. $this->stresst_address_2;
			}

			// City. Subdivition Postal.
			$output .= '<br/>';
			$output .= $this->city_name . ','. $this->subdivition_name;
			$output .= ' ' . $this->postal_code;

			// Contry.
			$output .= '<br/>'
			$output .= $this->contry_name;
			
			return $output;
		}
	}