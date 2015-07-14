<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateThmPackageConvergencePriceplan extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tmh_package_convergence_priceplan', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('fk_tmh_packag_convergence_id');
			$table->string('dn_tmh_package_convergence_name_th');
			$table->string('dn_tmh_package_convergence_name_en');
			$table->string('priceplan_charge_th');
			$table->string('priceplan_charge_en');
			$table->boolean('tmh_bundle');
			$table->integer('tmh_pin');
			$table->text('js_tmh_convergence_detail');
			$table->text('js_tmh_convergence_pin_message');
			$table->boolean('tvs_bundle');
			$table->integer('tvs_pin');
			$table->text('js_tol_convergence_detail');
			$table->text('js_tol_convergence_pin_message');
			$table->boolean('privilege_tv_anywhere_bundle');
			$table->integer('privilege_tv_anywhere_pin');
			$table->text('js_tv_anywhere_convergence_detail');
			$table->text('js_tv_anywhere_pin_message');
			$table->boolean('truecard_bundle');
			$table->integer('truecard_pin');
			$table->text('js_truecard_convergence_detail');
			$table->text('js_truecard_pin_message');
			$table->boolean('fixline_bundle');
			$table->integer('fixline_pin');
			$table->text('js_fixline_convergence_detail');
			$table->text('js_fixline_convergence_pin_message');
			$table->text('js_hilight');
			$table->text('js_tag_th');
			$table->text('js_tag_en');
			$table->text('js_marketing_message_th');
			$table->text('js_marketing_message_en');
			$table->text('term_condition_th');
			$table->text('term_condition_en');
			$table->datetime('deleted_at');
			$table->timestamps();
			// 36
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('tmh_package_convergence_priceplan');
	}

}
