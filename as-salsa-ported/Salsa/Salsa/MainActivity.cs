using Android.App;
using Android.Widget;
using Android.OS;

namespace Salsa
{
    [Activity(Label = "Salsa", MainLauncher = true, Icon = "@drawable/icon")]
    public class MainActivity : Activity
    {
        protected override void OnCreate(Bundle bundle)
        {
            base.OnCreate(bundle);
            SetContentView(Resource.Layout.Main);
            Button button = FindViewById<Button>(Resource.Id.button1);
            button.Click += Button_Click;
          
        }

        private void Button_Click(object sender, System.EventArgs e)
        {
            StartActivity(typeof(Recipe));
        }
    }
}

