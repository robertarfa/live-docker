from django.contrib import admin
from core.models import Video, Tag

class VideoAdmin(admin.ModelAdmin):
  readonly_fields = ("published_at",'num_likes', 'num_views')

# Register your models here.
admin.site.register(Video, VideoAdmin)
admin.site.register(Tag)