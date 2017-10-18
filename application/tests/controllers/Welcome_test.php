<?php
/**
 * Part of ci-phpunit-test
 *
 * @author     Kenji Suzuki <https://github.com/kenjis>
 * @license    MIT License
 * @copyright  2015 Kenji Suzuki
 * @link       https://github.com/kenjis/ci-phpunit-test
 */

class Welcome_test extends TestCase
{
	public function test_index()
	{
		$output = $this->request('GET', 'welcome/index');
		$this->assertContains(' <div class="col-sm-4 text-center padding wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">', $output);
	}

	public function test_method_404()
	{
		$this->request('GET', 'welcome/method_not_exist');
		$this->assertResponseCode(404);
	}

	public function test_APPPATH()
	{
		$actual = realpath(APPPATH);
		$expected = realpath(__DIR__ . '/../..');
		$this->assertEquals(
			$expected,
			$actual,
			'Your APPPATH seems to be wrong. Check your $application_folder in tests/Bootstrap.php'
		);
	}
        
        function test_pricing(){
                $output = $this->request('GET', 'Welcome/pricing');
		$this->assertContains('<p class="plan-name">Paket 3 hari Bali</p>', $output);
		
	}
         function test_services(){
                $output = $this->request('GET', 'Welcome/form');
		$this->assertContains('<td><input type="submit" value="Next"></td>', $output);
		
	}
        
}
